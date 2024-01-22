class AddFieldsToAdmins < ActiveRecord::Migration[7.1]
  def change
    add_column :admins, :nome, :string
    add_column :admins, :cpf, :string
    add_column :admins, :rg, :string
    add_column :admins, :telefone, :string
    add_column :admins, :secretaria, :string
    add_column :admins, :unidade, :string
    add_column :admins, :cargo, :string
  end
end
