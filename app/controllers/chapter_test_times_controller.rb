class ChapterTestTimesController < ApplicationController
  

	def show
       @chapterTestTime = Chapter_test_time.find(params[:id])
    end

  def new  	
  		@userid = params[:user_id];
  	    @chapterTestTime = Chapter_test_time.find_by_id(id: [@userid])
  	    @total_time

  	
  		
  		@chapterTestTime.update_attributes(:user_id => '2')
	

  	    email_type = params[:type]

  end


  def create
    @chapterTestTime = Chapter_test_time.new(chapterTestTime_params)
    if @chapterTestTime.save
     
      flash[:success] = "OK!"
     
    else
      render 'new'
    end
  end


	def edit
 	   
		@chapterTestTime = Chapter_test_time.find_by(id: [params[:user_id], params[:user_id]])
  	end

  	def update
       @chapterTestTime = Chapter_test_time.find_by(id: [params[:user_id], params[:user_id]])
       @chapterTestTime.update_attributes(:user_id => '2')
    
  end


  private

    def chapterTestTime_params
        params.require(:chapterTestTime).permit(:user_id, :chapter_id, :total_time)
    end


end
