class ChangeOpcaosToAlternativas < ActiveRecord::Migration[5.1]
  def change
  	rename_table :opcaos, :alternativas
  end
end
