class SessionsController < ApplicationController
  def new
  end

  def create

  	
#    aluno = Aluno.find_by(email: params[:session][:email].downcase)
#    if aluno && aluno.authenticate(params[:session][:password])
#    log_in aluno
#    redirect_to aluno
#    else
#      flash.now[:danger] = 'Invalid email/password combination'
#      render 'new'
#    end
  end

  def destroy

  end
end
