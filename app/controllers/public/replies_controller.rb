class Public::RepliesController < ApplicationController
  def create
    @reply = Reply.new(reply_params)
    @reply.customer_id = current_customer.id
    @reply.answer_id = params[:answer_id]
    @reply.question_id = params[:question_id]
    if @reply.save!
      render "public/show"
    else
      redirect_to root_path
    end
  end

  private
  def reply_params
    params.require(:reply).permit(:reply)
  end
end
