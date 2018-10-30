class AddQuestaoERepostaCertarToProvas < ActiveRecord::Migration[5.1]
  def change
    add_column :provas, :questao, :text
    add_column :provas, :respostacerta, :string
  end
end
