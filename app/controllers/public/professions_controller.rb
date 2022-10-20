class Public::ProfessionsController < ApplicationController
  
  def index
    @professions = Profession.all
  end
  
  def show
    @profession = Profession.find(params[:id])
    @questions = @profession.questions.all.includes(:customer).order(created_at: :desc).page(params[:page])
  end
  
end
