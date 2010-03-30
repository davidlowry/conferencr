class CartAndItems < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|
      t.datetime :purchased_at
      t.timestamps
    end
    
    create_table :purchase_items do |t|
      t.decimal :unit_price
      t.integer :product_id
      t.integer :cart_id
      t.integer :quantity
      t.timestamps
    end
  end

  def self.down
    drop_table :carts, :purchase_items
  end
end
