class AddPurchasePriceToCartItem < ActiveRecord::Migration
  def change
    add_column :cart_items, :PurchasePrice, :integer
  end
end
