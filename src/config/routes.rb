Rails.application.routes.draw do

  get 'charges/index'

  get 'charges/create'

  get 'charges/show'

  resources :charges, only: [:index, :create, :show]
  resources :customers, exclude: [:new, :edit]
end
