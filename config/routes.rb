Rails.application.routes.draw do
  root to: 'pages#home'

  get 'styleguide', to: 'pages#styleguide'

  devise_for :users, controllers: { registrations: "registrations" }
  resource :profile, only: [:show, :edit, :update]

  resources :heros do
    resources :adventures do
      resources :comments, except: [:index, :show]
    end

    resources :relatives do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end

