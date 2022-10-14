class Public::AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @answer = current_customer.answers.new(answer_params)
    @answer.question_id = @question.id
    @answer.save
    redirect_to question_path(@answer.question_id)
  end

  private
  def answer_params
    params.require(:answer).permit(:answer)
  end
end
