class QuestaosController < ApplicationController
  def index
  	@provas = Prova.all
  end

  def show 
	 @prova = Prova.find(params[:id])	
  end


	 def prova_params
	    params.require(:prova).permit(:id, :questao1, :resposta1, :capitulo_id)
	end
end
