class CapitulosController < ApplicationController

	def index
    	@capitulos = Capitulo.all
  	end


	def show
	    @capitulo = Capitulo.find(params[:id])
	end


	def new

    end
	

	private
	  def capitulo_params
	    params.require(:capitulo).permit(:nome, :id, :materia_id)
	end

end
