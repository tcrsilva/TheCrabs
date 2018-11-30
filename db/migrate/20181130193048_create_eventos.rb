class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.text :texto
      t.date :date
      t.text :local

      t.timestamps
    end
  end
end
