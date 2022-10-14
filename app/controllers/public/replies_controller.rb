class Public::RepliesController < ApplicationController
  def create
    @reply = Reply.new(reply_params)
    @reply.customer_id = current_customer.id
    @reply.answer_id = params[:answer_id]
    @reply.question_id = params[:question_id]
    @reply.save
    redirect_to question_path(@reply.question_id)
  end

  private
  def reply_params
    params.require(:reply).permit(:reply)
  end
end
