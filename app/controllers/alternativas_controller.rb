class AlternativasController < ApplicationController
  def index
  	@opcaos = Opcao.all
  end


	 def opcao_params
	    params.require(:opcao).permit(:id, :opcao1, :opcao2, :opcao3, :opcao4, :prova_id)
	end
end
