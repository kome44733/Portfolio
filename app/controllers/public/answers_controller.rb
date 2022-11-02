class Public::AnswersController < ApplicationController
  before_action :authenticate_customer!
  before_action :correct_answer,only: [:destroy]
  
  def create
    @question = Question.find(params[:question_id])
    @answer = current_customer.answers.new(answer_params)
    @answer.score = Language.get_data(answer_params[:answer])
    @answer.question_id = @question.id
    if @answer.save
      redirect_to question_path(@answer.question_id)
    else
      flash[:alert] = "投稿に失敗しました。"
      redirect_to question_path(@answer.question_id)
    end
  end
  
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to request.referer
  end
  
  
  private
  def correct_answer
      @answer = Answer.find(params[:id])
    unless @answer.customer.id == current_customer.id
      redirect_to customer_path(current_customer)
    end
  end
  
  def answer_params
    params.require(:answer).permit(:answer)
  end
  
end
