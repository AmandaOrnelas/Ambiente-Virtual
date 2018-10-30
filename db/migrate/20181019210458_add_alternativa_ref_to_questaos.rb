class AddAlternativaRefToQuestaos < ActiveRecord::Migration[5.1]
  def change
    add_reference :questaos, :alternativa, foreign_key: true
  end
end
