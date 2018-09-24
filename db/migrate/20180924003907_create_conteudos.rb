class CreateConteudos < ActiveRecord::Migration[5.1]
  def change
    create_table :conteudos do |t|
      t.string :subtitulo
      t.text :texto
      t.integer :ordem
      t.text :imagem
      t.integer :capitulo_id
      t.references :capitulo, foreign_key: true

      t.timestamps
    end
  end
end
