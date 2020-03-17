Rails.application.routes.draw do

  devise_scope :user do
   root "users/sessions#new"
  end

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
