class Public::HomesController < ApplicationController
  def top
    @professions = Profession.all
    @best_answers = Question.where(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @no_best_answers = Question.where.not(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @active1 = nil
    @active2 = nil
    if params[:tab].to_i == 2
      @active2 = "active"
    else
      @active1 = "active"
    end
  end

end
