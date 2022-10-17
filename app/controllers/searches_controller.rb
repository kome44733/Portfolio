class SearchesController < ApplicationController

  def search
    if params[:profession].present?
      @questions = Question.searchProfession(params[:word],params[:profession])
    else
      @questions = Question.search(params[:word])
    end
    @word = params[:word]
  end
end