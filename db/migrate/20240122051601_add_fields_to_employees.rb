class AddFieldsToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :nome, :string
    add_column :employees, :cpf, :string
    add_column :employees, :rg, :string
    add_column :employees, :telefone, :string
    add_column :employees, :secretaria, :string
    add_column :employees, :unidade, :string
    add_column :employees, :cargo, :string
  end
end
