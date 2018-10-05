class CapitulosController < ApplicationController
	def index
  	@capitulos = Capitulo.all
  end

	def show
    @capitulo = Capitulo.find(params[:id])
    @tempo_capitulo = TempoCapitulo.find_or_create_by!(
      user: current_user, capitulo: @capitulo)
	end

	private

	 def capitulo_params
	    params.require(:capitulo).permit(:nome, :id, :materia_id)
	end
end
