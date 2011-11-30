class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def set_cart
    if session[:exist]
      @cart = Cart.find(session[:exist])
    else
      @cart = Cart.create
      session[:exist] = @cart.id
    end
  end
 
end
