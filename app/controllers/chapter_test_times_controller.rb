class ChapterTestTimesController < ApplicationController
	
	def index
    	@chapter_test_time = Chapter_test_time.all
  	end
 
  	def show
    	@chapter_test_time = Chapter_test_time.find(params[:id])
  	end
	
	def new
  		@chapter_test_time = Chapter_test_time.new
	end
 
 	def edit
  		@chapter_test_time = Chapter_test_time.find(params[:id])
	end

	def create
  		@chapter_test_time = Chapter_test_time.new(chapter_test_time_params)
 
  		if @chapter_test_time.save
    		redirect_to @chapter_test_time
  		else
    		render 'new'
 	 	end
	end

	def update
		@chapter_test_time = Chapter_test_time.find(params[:id])
	 
	 	if @chapter_test_time.update(chapter_test_time_params)
	    	redirect_to @chapter_test_time
	  	else
	    	render 'edit'
	  	end
	end
 
	private
  		def chapter_test_time_params
    	params.require(:chapter_test_time).permit(:id, :user_id, :chapter_id, :total_time)
  	end

end
