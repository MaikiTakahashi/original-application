class MaidsController < ApplicationController

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
  
  private
  
  def maid_params
    params.require(:maid).permit(:name, :email, :description, :time, :place, :thumbnail, :thumbnail_url,
                                :detail_url, :category, :password, :password_confirmation)
  end
  
end
