class AddPriceToFormations < ActiveRecord::Migration[6.0]
  def change
    add_monetize :formations, :price, currency: { present: false }
  end
end
