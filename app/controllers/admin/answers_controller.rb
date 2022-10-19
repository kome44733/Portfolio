class Admin::AnswersController < ApplicationController
  before_action :authenticate_admin!
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to request.referer
  end
end
