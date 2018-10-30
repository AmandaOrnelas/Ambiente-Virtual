class AddAvaliacaoRefToProvaAlunos < ActiveRecord::Migration[5.1]
  def change
    add_reference :prova_alunos, :avaliacao, foreign_key: true
  end
end
