class Public::AnswersController < ApplicationController
  before_action :authenticate_customer!
  before_action :correct_answer,only: [:create,:destroy]
  
  def create
    @question = Question.find(params[:question_id])
    @answer = current_customer.answers.new(answer_params)
    @answer.question_id = @question.id
    @answer.save
    redirect_to question_path(@answer.question_id)
  end
  
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to request.referer
  end
  
  
  private
  def correct_answer
      @answer = Answer.find(params[:id])
    unless @customer.id == current_customer.id
      redirect_to customer_path(current_customer)
    end
  end
  
  def answer_params
    params.require(:answer).permit(:answer)
  end
  
end
