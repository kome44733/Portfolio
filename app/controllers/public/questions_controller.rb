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
    @reply = Reply.new

  end

  def update
    @question = Question.find(params[:id])
    #@question.best_answer_id = params[:question][:best_answer_id]
    @question.update(best_answer_params)
    redirect_to question_path(@question.id)
  end

  def create
    @question = Question.new(question_params)
    @question.customer_id = current_customer.id
    if @question.save!
      redirect_to questions_path
    else
      render :new
    end
  end
  private
  def question_params
    params.require(:question).permit(:post, :profession_id, :is_resolution, :best_answer_id)
  end
  def best_answer_params
    params.require(:question).permit(:best_answer_id)
  end
end
