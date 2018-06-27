class RenameColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :alunos, :senha, :password
  end
end
