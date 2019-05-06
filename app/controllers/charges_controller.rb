class ChargesController < ApplicationController
  def new
  end
  
  def create
    # Amount in cents
    # @amount = 500
    @booking = Booking.find(params[:id])
    provider = Provider.find(@booking.provider_id)
    cost_per_head = provider.cost_per_head
    persons = @booking.persons
  
    @amount = (cost_per_head * persons).to_i
  
    
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount * 100,
      description: 'Rails Stripe customer',
      currency: 'aud',
    })
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
