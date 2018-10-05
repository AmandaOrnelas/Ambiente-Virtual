class PadronizarTabelas < ActiveRecord::Migration[5.1]
  def change
    rename_table :administradors, :administradores

    change_table :capitulos do |t|
      t.remove :materia_id
    end
  end
end
