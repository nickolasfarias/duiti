class AddMontanteToCoins < ActiveRecord::Migration[6.1]
  def change
    add_monetize :coins, :montante, currency: { present: false }
  end
end
