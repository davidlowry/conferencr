class PurchaseItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :ticket
  
  def full_price
    unit_price * quantity
  end
end
