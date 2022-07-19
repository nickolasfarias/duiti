class AddPriceToServices < ActiveRecord::Migration[6.1]
  def change
    add_monetize :services, :preço, currency: { present: false }
  end
end
