# PaymentsMicroservice
A payments microservice to securely and efficiently collect payment from many different customers.

## Build

[Docker] + [Public CI]

[Instructions for building from source]

## Running via Docker

[Docker Pull info]

## Running from scratch

## General Usage

You'll use Stripe's client libraries to get the stripe ids needed to power creating customers & subscripts & one off charges.

You'll pass those values to your service backend and then the backend will use them to speak to this service to "let go of them". 

Your service will need to track all the relevant ids emitted by the payments microservice (customer, charges, subscriptions, and cards) but can query the payments microservice to determine the current state of any of those things. In this way, you can determine if cards are valid, if charges have succeeded, and if subscriptions are hunky doory without having to spend any cycles managing those things.

A customer will likely line up one to one with your service's user construct. A customer has a collection of cards, charges, and subscriptions. It has no concept of an order. (You should go check out the orders microservice which uses this tool to track things at a higher level, order. Orders belong to users, not customers. The relationship between an order and a customer is out of the scope of either service.)

## API Functionality

### Create a customer

### Add a card to a customer

Stripe calls these sources.

### Charge a customer

### Lookup customers

### Lookup cards

### Lookup charges

### Create a subscription

### Delete a subscription

### Update a subscription

### Lookup subscriptions
