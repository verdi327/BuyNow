class CartItem < ActiveRecord::Base
  
  belongs_to :item
  belongs_to :cart

  # before_filter :set_cart
  
  after_create :increase_total
  after_destroy :decrease_total
  
  def increase_total
    cart.total ||=0
    cart.total += self.PurchasePrice
    cart.save
  end
  
  def decrease_total
    cart.total ||= 0
    cart.total -= self.PurchasePrice
    cart.save    
  end

  
end
