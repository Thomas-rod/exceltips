class AddAmountToPayment < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :amount, :float, :default => 20
  end
end
