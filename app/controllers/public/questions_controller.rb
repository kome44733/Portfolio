class Public::QuestionsController < ApplicationController
  def new
    @question = Question.new
  end
  
  def index
    @questions = Question.all
  end
  
  def show
     @question = Question.find(params[:id])
     @answer = Answer.new
     #ログインユーザーの回答数
     @answer_count = Answer.where(question_id: params[:id]).where(customer_id: current_customer.id).count
  end
  
  def create
    @question = Question.new(question_params)
    @question.customer_id = current_customer.id 
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end
  
  def question_params
    params.require(:question).permit(:post)
  end
end
