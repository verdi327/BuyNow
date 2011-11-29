BuyNow::Application.routes.draw do
  resources :items
  
  post "cart_items/create", :controller => "cart_items", :action => "create",  :as => "add_to_cart"
  
  root :to => "items#index"
  
  delete "cart_items/:id", :controller => "cart_items", :action => "destroy",  :as => "delete_cart_item" 
  
end
