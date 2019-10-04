Rails.application.routes.draw do
  get 'welcom/index'
  get 'prodacts/new'
  get 'prodacts/show'

  resources :prodacts

  root 'welcom#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
