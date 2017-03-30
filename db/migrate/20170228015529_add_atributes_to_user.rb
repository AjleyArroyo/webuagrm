class AddAtributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :telefono, :string
    add_column :users, :direccion, :string
  end
end
