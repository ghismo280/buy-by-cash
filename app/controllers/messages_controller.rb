class MessagesController < ApplicationController
  def show
    @messages = Conversation.find(params[:id]).messages
  end

  def create
    @messages = Message.new
  end

end
