class MessagesController < ApplicationController
  def create
    @message = Maid.find(params[:message][:id]).messages.build(message_params)
    if @message.save
      redirect_to maid_path(params[:message][:id]) , notice: 'メッセージを保存しました'
    else
      flash.now[:alert] = "メッセージの保存に失敗しました"
      redirect_to maid_path(params[:message][:id])
    end
  end
  
  private
    def message_params
      params.require(:message).permit(:name, :body)
    end
  
end
