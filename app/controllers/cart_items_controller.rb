class CartItemsController < ApplicationController
  
  before_filter :set_cart
  
 def create
  @cart_item = @cart.cart_items.build(item_id: params[:zebra])
  @cart_item.PurchasePrice = @cart_item.item.price
  @cart_item.save
  redirect_to root_url
  
 end 
 
 def destroy
   @cart_item = CartItem.find(params[:id])
   @cart_item.destroy
   redirect_to root_url
 end
  
end
