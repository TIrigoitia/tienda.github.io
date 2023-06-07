class OrderItemsController < ApplicationController
  def create
    if user_signed_in?
      @order = current_order
      @order_item = @order.order_items.new(order_params)
      @order.user_id=current_user.id
      @order.status=0
      @order.save
    else
      redirect_to new_user_session_path
      flash.now[:notice] = 'Tienes que iniciar sesion para agregar productos a tu carrito'
    end

  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_params)
    redirect_to cart_show_path
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    redirect_to cart_show_path
  end


private

  def order_params
    params.require(:order_item).permit(:product_id, :quantity, :status,:user_id)
  end


end


