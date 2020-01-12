require 'stripe'

class Api::V1::ChargesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create

    Stripe.api_key = ENV["EXAMPLE_API_KEY"]

    begin

      customer = Stripe::Customer.create(
        :source => params[:charge][:token]
      )

      charge = Stripe::Charge.create({
        :customer => customer.id,
        :amount => params[:charge][:amount],
        :currency => params[:charge][:currency],
        })

        rescue Stripe::CardError => e
          render json: { message: 'oops'}, status: :not_acceptable

    end
  end
end
