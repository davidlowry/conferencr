class PurchaseItemsController < ApplicationController
  def create
    @ticket = Ticket.find(params[:ticket_id])
    @purchase_item = PurchaseItem.create!(:cart => current_cart, :ticket => @ticket, :quantity => 1, :unit_price => @ticket.price_pounds)
    flash[:notice] = "Added #{@ticket.ticket_name} to cart."
    redirect_to current_cart_url
    
  end
  
end