class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  enum status: {sin_confirmar: 0, confirmada: 1, pagada: 2,cancelada: 3}
  has_one_attached :image, :dependent => :destroy
  
  def subtotal
    order_items.collect{|order_item| order_item.valid? ? order_item.unit_price*order_item.quantity : 0}.sum
  end


  private

  def set_subtotal
    self[:subtotal] = subtotal()
  end

end
