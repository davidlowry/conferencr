class CartAndItems < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|
      t.string  :delivery_name
      t.string  :delivery_address1
      t.string  :delivery_address2
      t.string  :delivery_postcode
      t.text    :delivery_instructions
      t.integer :user_id
      t.string  :purchase_state
      t.datetime :purchased_at
      t.timestamps
    end
    
    create_table :purchase_items do |t|
      t.decimal :unit_price
      t.integer :ticket_id
      t.integer :cart_id
      t.integer :quantity
      t.timestamps
    end
  end

  def self.down
    drop_table :carts, :purchase_items
  end
end
