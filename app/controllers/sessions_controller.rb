class SessionsController < ApplicationController
  def new
  end
  
  def create
    @maid = Maid.find_by(email: params[:session][:email].downcase)
    if @maid && @maid.authenticate(params[:session][:password])
      session[:maid_id] = @maid.id
      flash[:info] = "logged in as#{@maid.name}"
 
      redirect_to root_path
    else
      flash[:danger] = 'invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    session[:maid_id] = nil
    redirect_to root_path
  end
  
end