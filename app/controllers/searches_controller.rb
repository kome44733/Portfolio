class SearchesController < ApplicationController
  before_action :authenticate_admin!, only: %i[admin_search admin_customer_search]
  before_action :authenticate_customer!, only: %i[search]
  def search
    if params[:profession].present?
      @questions = Question.searchProfession(params[:word],params[:profession])
    else
      @questions = Question.search(params[:word])
    end
    @word = params[:word]
  end

  def admin_search
    @questions = Question.search(params[:word])
    @word = params[:word]
  end

  def admin_customer_search
    @customers = Customer.search(params[:word])
    @word = params[:word]
  end
end

