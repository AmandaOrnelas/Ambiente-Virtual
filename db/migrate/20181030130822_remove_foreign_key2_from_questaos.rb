class RemoveForeignKey2FromQuestaos < ActiveRecord::Migration[5.1]
  def change
    remove_column :questaos, :capitulo_id, :integer
  end
end
