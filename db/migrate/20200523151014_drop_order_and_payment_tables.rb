class DropOrderAndPaymentTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :orders
    drop_table :formations
  end
end
