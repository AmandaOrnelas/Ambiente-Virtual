class AddQuestaoRefToAlternativas < ActiveRecord::Migration[5.1]
  def change
    add_reference :alternativas, :questao, foreign_key: true
  end
end
