class AddReferenceToService < ActiveRecord::Migration[6.1]
  def change
    add_reference :services, :worker, index: true
  end
end
