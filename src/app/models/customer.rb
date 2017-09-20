class Customer < ApplicationRecord

require "stripe"
Stripe.api_key = # get value from Stripe, do not push your key

  def create_customer
    Stripe::Customer.create(
      :id =>
      :default_source => # from Stripe.js
      :description =>
      :email =>
      :source => # token from Stripe.js
    )
  end

  def retrieve_customer
    Stripe::Customer.retrieve( {CUSTOMER_ID})
  end

  def update_customer
    cu = Stripe::Customer.retrieve( {CUSTOMER_ID} )
    cu.description = :description
    cu.source = "token" # obtained with Stripe.js
    cu.save
  end

  def delete_customer
    cu = Stripe::Customer.retrieve( {CUSTOMER_ID})
    cu.delete
  end

  def list_all_customers
    Stripe::Customer.list
  end

end
