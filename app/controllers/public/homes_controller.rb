class Public::HomesController < ApplicationController
  def top
    @professions = Profession.all
    @best_answers = Question.where(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @no_best_answers = Question.where.not(best_answer_id: nil).order(created_at: :desc).page(params[:page])
  end

  def about
  end
end
