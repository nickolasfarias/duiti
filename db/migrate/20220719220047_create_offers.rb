class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :status
      t.boolean :completa
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
