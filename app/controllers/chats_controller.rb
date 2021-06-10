class ChatsController < ApplicationController
  def index
    @calendar = Calendar.find(params[:calendar_id])
    @chat = Chat.new
    @chats = @calendar.chats.includes(:team)
  end

  def create
    @calendar = Calendar.find(params[:calendar_id])
    @chat = @calendar.chats.new(chat_params)
    if @chat.save
      redirect_to calendar_chats_path(@calendar.id)
    else
      @chats = @calendar.chats.includes(:team)
      render :index
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:message, :team_id, :calendar_id).merge(calendar_id: params[:calendar_id], )
  end

end
