class RemoveForeignKeyFromQuestaos < ActiveRecord::Migration[5.1]
  def change
    remove_column :questaos, :alternativa_id, :integer
  end
end
