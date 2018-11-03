class MessagesController < ApplicationController
  def index
    @first_request = Message.where(conversation: Conversation.where(recipient: current_user, ask_for_job: true, accept_job: false))
    @accepted_request = Message.where(conversation: Conversation.where(recipient: current_user, ask_for_job: true, accept_job: true))
    @simple_messages = Message.where(conversation: Conversation.where(recipient: current_user, ask_for_job: false, accept_job: false))
    @messages = Message.where(conversation: Conversation.where(sender: current_user))

  end

  def create
    @messages = Message.new
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
