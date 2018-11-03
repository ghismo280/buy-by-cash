class MessagesController < ApplicationController
  def index
    @messages = Message.where(conversation: Conversation.where(recipient: current_user))
  end

  def create
    @messages = Message.new
  end
end
