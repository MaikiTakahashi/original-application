module SessionsHelper
  def current_maid
     @current_maid ||= Maid.find_by(id: session[:maid_id])
  end

  def logged_in?
      !!current_maid
  end
  
  def store_location
      session[:forwarding_url] = request.url if request.get?
  end
  
end