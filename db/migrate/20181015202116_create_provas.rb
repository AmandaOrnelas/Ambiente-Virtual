class CreateProvas < ActiveRecord::Migration[5.1]
  def change
    create_table :provas do |t|
      t.text :questao1
      t.text :resposta1
      t.text :questao2
      t.text :resposta2
      t.text :questao3
      t.text :resposta3
      t.text :questao4
      t.text :resposta4
      t.text :questao5
      t.text :resposta5
      t.text :questao6
      t.text :resposta6
      t.text :questao7
      t.text :resposta7
      t.text :questao8
      t.text :resposta8
      t.text :questao9
      t.text :resposta9
      t.text :questao10
      t.text :resposta10
      t.references :capitulo, foreign_key: true

      t.timestamps
    end
  end
end
