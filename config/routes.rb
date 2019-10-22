Rails.application.routes.draw do
  get 'welcom/index'
  get 'prodacts/new'
  get 'prodacts/show'
  get 'prodacts/search_by_name' => 'prodacts#search_by_name', :as => 'search_by_name_prodacts_path'
  get 'prodacts/search_by_group' => 'prodacts#search_by_group', :as => 'search_by_group_prodacts_path'
  get 'enterprises/new'
  get 'enterprises/show'
  get 'enterprises/watch' => 'enterprises#watch', :as => 'watch_path'

  resources :prodacts, :enterprises
  resources :lists, :bosses, :markets

  root 'welcom#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
