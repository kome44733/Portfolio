class Public::ProfessionsController < ApplicationController
  
  def index
    @professions = Profession.all
    
  end
  
  def show
    profession = Profession.find(params[:id])
    @best_answers = profession.questions.where(best_answer_id: nil).order(created_at: :desc).page(params[:page])
    @no_best_answers = profession.questions.where.not(best_answer_id: nil).order(created_at: :desc).page(params[:page])
  end
  
end
