class ChargesController < ApplicationController
  skip_before_action :authenticate_user!
  def new

  end

  def create
    redirect_to new_user_registration_path

    @amount = 5000

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card => params[:stripeToken]
      )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: "Exceltips - formation",
      currency: 'eur'
      )
    rescue  Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
  end
end
