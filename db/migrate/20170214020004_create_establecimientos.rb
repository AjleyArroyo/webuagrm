class CreateEstablecimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :establecimientos do |t|
      t.string :nombre
      t.string :numeracion
      t.string :alias
      t.string :informacion
      t.float :latitud
      t.float :longitud
      t.string :imagen
      t.integer :idcategoria

      t.timestamps
    end
  end
end
