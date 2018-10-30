class ProvaAlunosController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @prova_aluno = @user.prova_aluno.create(prova_aluno_params)
    redirect_to article_path(@user)
  end

 
  private
    def prova_aluno_params
      params.require(:prova_aluno).permit(:resposta1, :resposta2, :resposta3, :resposta4, :resposta5, :resposta6, :resposta7, :resposta8, :resposta9, :resposta10, :user_id)
    end


end
