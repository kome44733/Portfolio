class Public::QuestionsController < ApplicationController
  before_action :authenticate_customer!, except: [:index, :show]
  before_action :correct_question, only: [:update, :destroy]

  def new
    @question = Question.new
  end

  def index
    @professions = Profession.all
    @best_answers = Question.includes(:profession,:answers).where(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @no_best_answers = Question.includes(:profession,:answers).where.not(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @active1 = nil
    @active2 = nil
    if params[:tab].to_i == 2
      @active2 = "active"
    else
      @active1 = "active"
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    # ログインユーザーの回答数
    if customer_signed_in?
      @answer_count = Answer.where(question_id: params[:id]).where(customer_id: current_customer.id).count
    end
    @reply = Reply.new
  end

  def update
    @question = Question.find(params[:id])
    @question.update(best_answer_params)
    redirect_to question_path(@question.id)
  end

  def create
    @question = Question.new(question_params)
    @question.score = Language.get_data(question_params[:post])
    @question.customer_id = current_customer.id
    if @question.save
      flash[:notice] = "投稿に成功しました。"
      redirect_to questions_path
    else
      flash[:alert] = "投稿に失敗しました。"
      @question = Question.new(question_params)
      @selected_profession_id = question_params[:profession_id]
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
    end

    def question_params
      params.require(:question).permit(:post, :profession_id, :is_resolution, :best_answer_id)
    end
    def best_answer_params
      params.require(:question).permit(:best_answer_id)
    end
end
