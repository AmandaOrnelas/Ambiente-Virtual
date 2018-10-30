class RemoveColumnsFromProvas < ActiveRecord::Migration[5.1]
  def change
    remove_column :provas, :questao1, :text
    remove_column :provas, :questao2, :text
    remove_column :provas, :questao3, :text
    remove_column :provas, :questao4, :text
    remove_column :provas, :questao5, :text
    remove_column :provas, :questao6, :text
    remove_column :provas, :questao7, :text
    remove_column :provas, :questao8, :text
    remove_column :provas, :questao9, :text
    remove_column :provas, :questao10, :text
    remove_column :provas, :resposta1, :text
    remove_column :provas, :resposta2, :text
    remove_column :provas, :resposta3, :text
    remove_column :provas, :resposta4, :text
    remove_column :provas, :resposta5, :text
    remove_column :provas, :resposta6, :text
    remove_column :provas, :resposta7, :text
    remove_column :provas, :resposta8, :text
    remove_column :provas, :resposta9, :text
    remove_column :provas, :resposta10, :text
  end
end
