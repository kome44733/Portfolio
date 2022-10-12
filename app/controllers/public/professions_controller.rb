class Public::ProfessionsController < ApplicationController
  
  def index
    @professions = Profession.all
  end
  
  def show
    @profession = Profession.find(params[:id])
    @questions = @profession.questions.all
  end
  
end
