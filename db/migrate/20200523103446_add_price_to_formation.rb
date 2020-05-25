class AddPriceToFormation < ActiveRecord::Migration[6.0]
  def change
    remove_column :formations, :price_cents
    add_monetize :formations, :price, currency: { present: false }
  end
end
