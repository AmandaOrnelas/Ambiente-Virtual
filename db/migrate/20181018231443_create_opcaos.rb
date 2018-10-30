class CreateOpcaos < ActiveRecord::Migration[5.1]
  def change
    create_table :opcaos do |t|
      t.text :opcao1
      t.text :opcao2
      t.text :opcao3
      t.text :opcao4
      t.references :prova, foreign_key: true

      t.timestamps
    end
  end
end
