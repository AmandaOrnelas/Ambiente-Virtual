class CreateCapitulos < ActiveRecord::Migration[5.1]
  def change
    create_table :capitulos do |t|
      t.string :titulo
      t.integer :materia_id
      t.text :tempo_medio
      t.text :tempo_maximo

      t.timestamps
    end
  end
end
