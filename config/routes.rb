Rails.application.routes.draw do
  root to: 'pages#home'

  get 'styleguide', to: 'pages#styleguide'

  devise_for :users
  resource :profile, only: [:show, :edit, :update]

  resources :heros do
    resources :adventures do
      resources :comments, only: :create
    end

    resources :relatives do
      member do
        get :invitation
        patch :accept
        patch :decline
      end
    end
  end


  resources :adventures, only: [] do
    resources :comments, only: [:create, :destroy]
  end
end

