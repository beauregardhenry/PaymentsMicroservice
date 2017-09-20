Rails.application.routes.draw do

  resources :charges, only: [:new, :index, :create, :show]
  resources :customers, exclude: [:new, :edit]
end
