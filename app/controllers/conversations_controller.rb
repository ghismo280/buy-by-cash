class ConversationsController < ApplicationController

  def new
  @conversation = Conversation.new
  end

  def index
    @first_request = Conversation.where(recipient: current_user, ask_for_job: true, accept_job: false)
    @accepted_request = Conversation.where(recipient: current_user, ask_for_job: true, accept_job: true)
    @simple_messages = Conversation.where(recipient: current_user, ask_for_job: false, accept_job: false)
  end

  def create

    @conversation = Conversation.new
    @conversation.sender_id = current_user.id
    @conversation.recipient_id = params[:id]
    @conversation.save
    message = Message.new(body: params[:message][:body], conversation_id: @conversation.id)
    message.save
    redirect_to conversations_path
  end

  def delete
    @a = Conversation.where(recipient: current_user, sender: User.find(params[:sender_id].to_i)).first
    @a.destroy
    redirect_to conversations_path
  end

  def accept
    @a = Conversation.where(recipient: current_user, sender: User.find(params[:sender_id].to_i)).first
    if @a.ask_for_job == true
      @a.accept_job = true
      @a.save
      redirect_to conversations_path
    else
      flash[:success] = "Already saved!"
    end
  end

private

  def conversation_params
    params.require(:conversation).permit(:sender_id, :recipient_id)
  end

end
