class ChangeProvasToQuestaos < ActiveRecord::Migration[5.1]
  def change
  	rename_table :provas, :questaos
  end
end
