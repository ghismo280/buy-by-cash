class ConversationsController < ApplicationController

  def create
    @conversation = Conversation.new
  end

private

  def conversation_params
    params.require(:conversation).permit(:sender_id, :recipient_id)
  end

end
