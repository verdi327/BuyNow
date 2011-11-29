BuyNow::Application.routes.draw do
  resources :items
  
  post "cart_items/create/:item_id", :controller => "cart_items", :action => "create",  :as => "add_to_cart"
  
  root :to => "items#index"
  
end
