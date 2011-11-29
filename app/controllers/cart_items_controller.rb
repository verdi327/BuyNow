class CartItemsController < ApplicationController
  
  def new
    @cart_item = CartItem.new
  end
  
  def create
    @cart_item = cart.cart_items.build(:item_id => params[:item_id])
    
    
   redirect_to root_url
  end
  
  
end
