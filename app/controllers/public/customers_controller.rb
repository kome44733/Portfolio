class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!, except: [:index]
  before_action :correct_customer, except: [:index]
  def show
    @customer = current_customer
    @favorites = current_customer.favorites.all
    @questions = current_customer.questions.all
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
      @customer= Customer.find(params[:id])
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
