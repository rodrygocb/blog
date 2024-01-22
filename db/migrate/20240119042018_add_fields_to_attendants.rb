class AddFieldsToAttendants < ActiveRecord::Migration[7.1]
  def change
    add_column :attendants, :nome, :string
    add_column :attendants, :cpf, :string
    add_column :attendants, :rg, :string
    add_column :attendants, :telefone, :string
    add_column :attendants, :secretaria, :string
    add_column :attendants, :unidade, :string
    add_column :attendants, :cargo, :string
  end
end
