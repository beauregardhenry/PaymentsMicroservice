class Charge < ApplicationRecord

def create_charge
  require "stripe"
  Stripe.api_key = "sk_test_" # Use your secret test key here

  Stripe::Charge.create(
    :amount => 2000,
    :currency => "usd",
    :customer => # The ID of an existing customer
    :source => "tok_visa", # obtained with Stripe.js
    :description => "Charge for elizabeth.moore@example.com"
  )
end





end
