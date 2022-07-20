class RemoveReferenceFromCoin < ActiveRecord::Migration[6.1]
  def change
    remove_reference :coins, :user, index: true
  end
end
