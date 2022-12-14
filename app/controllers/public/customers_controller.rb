class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!, except: [:index]
  before_action :correct_customer, except: [:index,:show]

  def show
    @customer = Customer.find(params[:id])
    @favorites = current_customer.favorites.includes(question: :profession).page(params[:page])
    @questions = current_customer.questions.includes(:profession,:answers).page(params[:question])
    answer_ids = @customer.answers.pluck(:id)
    @best_answer_questions = Question.where(best_answer_id: answer_ids)
    @active1 = nil
    @active2 = nil
    if params[:tab].to_i == 2
      @active2 = "active"
    else
      @active1 = "active"
    end
  end

  def edit
    @customer = current_customer
  end

  def index
    redirect_to new_customer_registration_path
  end

  def withdrawal
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to customer_path
    else
      flash[:alert] = "編集保存に失敗しました。"
      redirect_back(fallback_location: root_path)
    end
  end

  def correct_customer
    @customer = Customer.find(params[:id])
    unless @customer.id == current_customer.id
      redirect_to customer_path(current_customer)
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to request.referer
  end

  private
    def customer_params
      params.require(:customer).permit(:nickname, :email)
    end
end
