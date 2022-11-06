class Public::ProfessionsController < ApplicationController
  def index
    @professions = Profession.all
  end

  def show
    @profession = Profession.find_by(id: params[:id])
    @best_answers = @profession.questions.where(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @no_best_answers = @profession.questions.where.not(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @active1 = nil
    @active2 = nil
    if params[:tab].to_i == 2
      @active2 = "active"
    else
      @active1 = "active"
    end
  end
end
