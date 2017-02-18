class MessagesController < ApplicationController
  def create
    @message = Maid.find(params[:message][:maid_id]).messages.build(message_params)
    if @message.save
      redirect_to maid_path(params[:message][:maid_id]) , notice: 'メッセージを保存しました'
    else
      flash.now[:alert] = "メッセージの保存に失敗しました"
      #redirect_to maid_path(params[:message][:id])
      @maid = Maid.find(params[:message][:maid_id])
      @messages = Message.all
      render 'maids/show'
    end
  end
  
  private
    def message_params
      params.require(:message).permit(:name, :body)
    end
  
end
