class RemoveForeignKeyFromOpcaos < ActiveRecord::Migration[5.1]
  def change
    remove_column :opcaos, :prova_id, :integer
  end
end
