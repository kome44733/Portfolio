class Admin::RepliesController < ApplicationController
  before_action :authenticate_admin!
  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
    redirect_to request.referer
  end
end
