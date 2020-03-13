Rails.application.routes.draw do
  get 'comments/index'
  get 'topics/index'
  root 'pages#index'
  get 'pages/index'

  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
