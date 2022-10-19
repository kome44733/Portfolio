class Public::QuestionsController < ApplicationController
  before_action :authenticate_customer!
  before_action :correct_question,only: [:update,:destroy]

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
      if customer_signed_in?
        @answer_count = Answer.where(question_id: params[:id]).where(customer_id: current_customer.id).count
      end
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
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to request.referer
  end

  private
  def correct_question
    @question = Question.find(params[:id])
    unless @question.customer_id == current_customer.id
      redirect_to customer_path(current_customer)
    end
    # redirect_to customer_path(current_customer) unless @question.customer_id == current_customer.id
  end

  def question_params
    params.require(:question).permit(:post, :profession_id, :is_resolution, :best_answer_id)
  end
  def best_answer_params
    params.require(:question).permit(:best_answer_id)
  end
end
