class Public::RepliesController < ApplicationController
  
  before_action :authenticate_customer!
  before_action :correct_reply,only: [:destroy]
  
  def create
    @reply = Reply.new(reply_params)
    @reply.customer_id = current_customer.id
    @reply.answer_id = params[:answer_id]
    @reply.question_id = params[:question_id]
    if @reply.save
      redirect_to question_path(@reply.question_id)
    else
      flash[:alert] = "投稿に失敗しました。"
      redirect_to question_path(@reply.question_id)
    end
  end
  
  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
    redirect_to request.referer
  end
  
  
  private
  
  def correct_reply
      @reply= Reply.find(params[:id])
    unless @reply.customer.id == current_customer.id
      redirect_to customer_path(current_customer)
    end
  end
  
  def reply_params
    params.require(:reply).permit(:reply)
  end
end
