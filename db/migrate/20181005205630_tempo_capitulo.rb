class TempoCapitulo < ActiveRecord::Migration[5.1]
  def change
    create_table :tempo_capitulos do |t|
      t.references :user
      t.references :capitulo
      t.string :tempo_total
      t.timestamps
    end
  end
end
