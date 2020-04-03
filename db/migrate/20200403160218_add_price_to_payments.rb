class AddPriceToPayments < ActiveRecord::Migration[6.0]
  def change
    add_monetize :payments, :price, currency: { present: false }
  end
end
