class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :destroy]
  
  def index
    @orders=current_user.orders.where.not(status: 0)
  end

  def show
  end

  def destroy
    @order.status=3
    @order.save
    respond_to do |format|
      if current_user.client?
        format.html { redirect_to orders_path, alert: "La orden se cancelo correctamente" }
     else
       format.html {redirect_to admin_index_path, alert: "La orden se cancelo correctamente"}
     end
    end
  end
  
  
private
  def set_order
    @order = Order.find(params[:id])
  end
end
