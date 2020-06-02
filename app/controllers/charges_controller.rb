class ChargesController < ApplicationController
  skip_before_action :authenticate_user!
  def new

  end

  def create

    Stripe.api_key = 'sk_test_HwvkpBuW5kxgibrZDZo0rpYk00dkXrEWyb'

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        price: '{price_HMAipK3IxRllNR}',
        quantity: 1
      }],
      mode: 'payment',
      success_url: 'https://example.com/success?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: 'https://example.com/cancel',
    )

    # @amount = 3750

    # customer = Stripe::Customer.create(
    #   :email => params[:stripeEmail],
    #   :card => params[:stripeToken]
    #   )

    # charge = Stripe::Charge.create(
    #   customer: customer.id,
    #   amount: @amount,
    #   description: "Exceltips - formation",
    #   currency: 'eur'
    #   )
    # rescue  Stripe::CardError => e
    #   flash[:error] = e.message
    #   redirect_to root_path
  end
end
