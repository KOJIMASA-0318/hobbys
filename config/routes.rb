Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/index'
  get 'bbs', to: 'pages#main', as: 'bbs'

  resources :topics do
    resources :comments
  end

  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
