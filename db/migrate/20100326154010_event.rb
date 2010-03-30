class Event < ActiveRecord::Migration
  def self.up
    create_table :events, :force => true do |t|
      t.string  :name
      t.integer :venue_id
      t.text    :introduction
      t.text    :text
      t.boolean :tickets_released
      t.date    :availability_start
      t.date    :availability_end
      t.timestamps
    end
    
    create_table :venues, :force => true do |t|
      t.integer :venue_id #can be self referential for multiroom venues
      t.integer :seated_capacity
      t.integer :overflow_capacity
      t.string  :name
      t.string  :address
      t.string  :google_maps_location
      t.text    :text
    end
    
    create_table :tickets, :force => true do |t|
      t.integer :event_id
      t.string  :ticket_name
      t.decimal :price_pounds
      t.integer :quantity_available
      t.boolean :released
      t.date    :availability_start
      t.date    :availability_end
    end
    
    
  end

  def self.down
    drop_table :events, :tickets, :venues
  end
end
