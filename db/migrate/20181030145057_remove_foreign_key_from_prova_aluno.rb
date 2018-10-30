class RemoveForeignKeyFromProvaAluno < ActiveRecord::Migration[5.1]
  def change
    remove_column :prova_alunos, :prova_id, :integer
  end
end
