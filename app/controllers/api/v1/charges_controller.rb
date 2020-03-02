require 'stripe'

class Api::V1::ChargesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create

    Stripe.api_key = ENV['TEMP_KEY']

    begin

      customer = Stripe::Customer.create({
        :source => params[:charge][:token],
        :email => params[:charge][:email],
        :description => params[:charge][:description],
        :name => params[:charge][:name],
      })

      charge = Stripe::Charge.create({
        :customer => customer.id,
        :amount => params[:charge][:amount],
        :currency => params[:charge][:currency],
        })

        rescue Stripe::CardError => e
          render json: { message: 'oops'}, status: :not_acceptable

    end

  end

  def index
    Stripe.api_key = ENV["EXAMPLE_API_KEY"]

    @charges = Stripe::Customer.list({email: params[:email]})

    render json: @charges
  end

end
