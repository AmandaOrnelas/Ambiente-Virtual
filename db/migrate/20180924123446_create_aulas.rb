class CreateAulas < ActiveRecord::Migration[5.1]
  def change
    create_table :aulas do |t|
      t.string :titulo
      t.text :texto
      t.integer :conteudo_id
      t.references :conteudo, foreign_key: true

      t.timestamps
    end
  end
end
