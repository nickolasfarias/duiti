class AddPriceToOffers < ActiveRecord::Migration[6.1]
  def change
    add_monetize :offers, :preço, currency: { present: false }
  end
end
