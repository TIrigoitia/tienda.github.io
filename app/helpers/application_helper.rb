module ApplicationHelper
  def current_order
    if !(current_user.orders.last==nil)
      current_order=current_user.orders.last
    else
      current_order=current_user.orders.new
    end
  end
end
