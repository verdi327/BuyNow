class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :cart
  
  def cart
    session[:cart_id] = session[:cart_id] || Cart.create.id
    @cart = Cart.find(session[:cart_id])
  end
  
end
