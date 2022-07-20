class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nome, :string
    add_column :users, :idade, :integer
    add_column :users, :endereço, :text
    add_column :users, :trabalhador, :boolean
    add_column :users, :telefone, :string
    add_column :users, :cpf, :string
  end
end
