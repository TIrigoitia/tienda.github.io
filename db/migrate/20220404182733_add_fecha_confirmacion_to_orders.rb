class AddFechaConfirmacionToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :fecha_confirmacion, :datetime
  end
end
