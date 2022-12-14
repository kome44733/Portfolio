class Public::FavoritesController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    favorite = current_customer.favorites.new(question_id: @question.id)
    favorite.save
  end

  def destroy
    @question = Question.find(params[:question_id])
    favorite = current_customer.favorites.find_by(question_id: @question.id)
    favorite.destroy
  end
end
