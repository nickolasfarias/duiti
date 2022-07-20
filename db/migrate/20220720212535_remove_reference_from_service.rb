class RemoveReferenceFromService < ActiveRecord::Migration[6.1]
  def change
    remove_reference :services, :user, index: true
  end
end
