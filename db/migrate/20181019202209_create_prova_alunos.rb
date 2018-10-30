class CreateProvaAlunos < ActiveRecord::Migration[5.1]
  def change
    create_table :prova_alunos do |t|
      t.text :resposta1
      t.text :resposta2
      t.text :resposta3
      t.text :resposta4
      t.text :resposta5
      t.text :resposta6
      t.text :resposta7
      t.text :resposta8
      t.text :resposta9
      t.text :resposta10
      t.references :prova, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
