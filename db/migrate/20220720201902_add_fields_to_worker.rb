class AddFieldsToWorker < ActiveRecord::Migration[6.1]
  def change
    add_column :workers, :nome, :string
    add_column :workers, :idade, :integer
    add_column :workers, :endereço, :text
    add_column :workers, :telefone, :string
    add_column :workers, :cpf, :string
  end
end
