class TempoCapitulosController < ApplicationController

	def index
    	@tempo_capitulo = TempoCapitulo.all
  	end

  	def show
    	@tempo_capitulo = TempoCapitulo.find(params[:id])
  	end

	def new
  		@tempo_capitulo = TempoCapitulo.new
	end

 	def edit
  		@tempo_capitulo = TempoCapitulo.find(params[:id])
	end

	def create
  		@tempo_capitulo = TempoCapitulo.new(tempo_capitulo_params)

  		if @tempo_capitulo.save
    		redirect_to @tempo_capitulo
  		else
    		render 'new'
 	 	end
	end

  def update
    tempo_capitulo = TempoCapitulo.find(params[:id])
    tempo_capitulo.update!(tempo_total: params[:tempo_capitulo][:tempo])

		# @tempo_capitulo = TempoCapitulo.find(params[:id])

	 # 	if @tempo_capitulo.update(tempo_capitulo_params)
	 #    	redirect_to @tempo_capitulo
	 #  	else
	 #    	render 'edit'
	 #  	end
	end

	private
  		def tempo_capitulo_params
    	params.require(:tempo_capitulo).permit(:id, :user_id, :chapter_id, :tempo_total)
  	end

end
