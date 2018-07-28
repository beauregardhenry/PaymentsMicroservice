class Charge < ApplicationRecord
require "stripe"
require "securerandom"
Stripe.api_key = "sk_test_"

def create_charge
  Stripe::Charge.create({
    :amount => 2000,
    :currency => "usd",
    :source => "tok_visa", # obtained with Stripe.js
    :description => "Charge for elizabeth.moore@example.com"
  }, {
    :idempotency_key => SecureRandom.uuid
  })
end





end
