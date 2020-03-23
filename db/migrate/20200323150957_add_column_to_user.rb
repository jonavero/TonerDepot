class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Tipo, :string
    add_column :users, :Activo, :string,default: 'S'
  end
end
