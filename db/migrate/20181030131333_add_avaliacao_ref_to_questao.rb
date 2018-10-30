class AddAvaliacaoRefToQuestao < ActiveRecord::Migration[5.1]
  def change
    add_reference :questaos, :avaliacao, foreign_key: true
  end
end
