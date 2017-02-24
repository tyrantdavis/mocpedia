Rails.application.routes.draw do
  get 'downgrade/new'

  devise_for :users
  resources :wikis
  resources :charges, only: [:new, :create]
  resources :downgrade, only: [:new, :create]

  get 'welcome/index'
  get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
