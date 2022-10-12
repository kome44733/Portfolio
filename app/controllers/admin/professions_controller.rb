class Admin::ProfessionsController < ApplicationController
  def index
    @profession   = Profession.new
    @professions  = Profession.all
  end

  def edit
    @profession = Profession.find(params[:id])
  end

  def create
    @profession = Profession.new(profession_params)
    if @profession.save
      redirect_to request.referer
    else
      @profession   = Profession.new
      @professions  = Profession.all
      render :index
    end
  end

  def update
    @profession = Profession.find(params[:id])
    if @profession.update(profession_params)
      redirect_to admin_professions_path
    else
      redirect_to edit_admin_profession_path
    end
  end

  private
  def profession_params
    params.require(:profession).permit(:name)
  end
end
