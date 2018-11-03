class ConversationsController < ApplicationController

  def new
  @conversation = Conversation.new
  end

  def create

    @conversation = Conversation.new
    @conversation.sender_id = current_user.id
    @conversation.recipient_id = params[:id]
    @conversation.save
    message = Message.new(body: params[:message][:body], conversation_id: @conversation.id)
    message.save
    redirect_to messages_path
  end

private

  def conversation_params
    params.require(:conversation).permit(:sender_id, :recipient_id)
  end

end
