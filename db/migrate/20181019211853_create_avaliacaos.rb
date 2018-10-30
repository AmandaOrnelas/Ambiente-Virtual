class CreateAvaliacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :avaliacaos do |t|
      t.string :titulo
      t.references :capitulo, foreign_key: true

      t.timestamps
    end
  end
end
