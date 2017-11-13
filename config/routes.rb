Rails.application.routes.draw do
  get 'charges/new'

  resources :wikis
  resources :charges, only: [:new, :create]
  root 'welcome#index'
  devise_for :users
  get 'about' => 'welcome#about'
  get 'downgrade_charge' => 'charges#downgrade'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
