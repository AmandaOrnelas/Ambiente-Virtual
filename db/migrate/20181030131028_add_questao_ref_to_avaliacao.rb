class AddQuestaoRefToAvaliacao < ActiveRecord::Migration[5.1]
  def change
    add_reference :avaliacaos, :questao, foreign_key: true
  end
end
