class MaidsController < ApplicationController
  before_action :logged_in_maid, only: [:edit, :update]
  before_action :correct_maid, only: [:edit, :update]

  def new
    @maid = Maid.new
  end
  
  def create
    @maid = Maid.new(maid_params)
    if @maid.save 
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def edit
    @maid = Maid.find(params[:id])
  end 
  
  def update
    @maid = Maid.find(params[:id])
    if @maid.update(maid_params)
      redirect_to root_path , notice: 'プロフィールを編集しました'
    else
      render 'edit'
    end
  end
  
  def show
    @maid = Maid.find(params[:id])
    @message = Message.new
    @messages = Message.all
  end
  
  private
  
  def maid_params
    params.require(:maid).permit(:name, :email, :description, :time, :place, :thumbnail, :thumbnail_url,
                                :detail_url, :category, :password, :password_confirmation)
  end
  
  def logged_in_maid
    unless logged_in?
      flash[:danger] = "ログインしてください。"
      redirect_to login_url
    end
  end
  
  def correct_maid
    @maid = Maid.find_by(email: "m1223takahashi@gmail.com")
    redirect_to(root_url) unless @maid == current_maid
  end
  
end
