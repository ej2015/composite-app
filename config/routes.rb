Rails.application.routes.draw do
  resources :tasks
  resources :leaf_tasks
  resources :composit_tasks
  devise_for :users
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :users
end
