class RemoveForeignKey2FromAvaliacaos < ActiveRecord::Migration[5.1]
  def change
    remove_column :avaliacaos, :questao_id, :integer
  end
end
