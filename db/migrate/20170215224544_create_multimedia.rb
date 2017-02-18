class CreateMultimedia < ActiveRecord::Migration[5.0]
  def change
    create_table :multimedia do |t|
      t.string :nombre
      t.string :direccion
      t.string :extension
      t.string :descripcion

      t.timestamps
    end
  end
end
