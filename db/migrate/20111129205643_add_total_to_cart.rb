class AddTotalToCart < ActiveRecord::Migration
  def change
    add_column :carts, :total, :integer
  end
end
