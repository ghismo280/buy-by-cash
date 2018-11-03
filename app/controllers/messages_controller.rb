class MessagesController < ApplicationController
  def index
    @messages = Message.where(conversation: Conversation.where(recipient: current_user))
  end

  def accept
    @a = Conversation.where(recipient: current_user, sender: User.find(params[:sender_id].to_i)).first
    if @a.ask_for_job == true
      @a.accept_job = true
      @a.save
      flash[:success] = "Woohoo!"
    else
      flash[:success] = "Woohoo!"
    end
  end
end
