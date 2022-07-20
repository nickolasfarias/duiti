class AddReferenceToCoin < ActiveRecord::Migration[6.1]
  def change
    add_reference :coins, :user, index: true
    add_reference :coins, :worker, index: true
  end
end
