class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.string :contenido
      t.string :fecha
      t.string :hora

      t.timestamps
    end
  end
end
