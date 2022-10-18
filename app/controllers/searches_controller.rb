class SearchesController < ApplicationController
  before_action :authenticate_admin!, only: %i[adminsearch]
  before_action :authenticate_customer!, only: %i[search]
  def search
    if params[:profession].present?
      @questions = Question.searchProfession(params[:word],params[:profession])
    else
      @questions = Question.search(params[:word])
    end
    @word = params[:word]
  end
  
  def adminsearch
    if params[:customer].present?
      @customers = Customer.searchCustomer(params[:word],params[:customer])
    else
      @questions = Question.search(params[:word])
    end
    @word = params[:word]
  end
end

