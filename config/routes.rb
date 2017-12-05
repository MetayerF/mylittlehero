Rails.application.routes.draw do
  root to: 'pages#home'

  get 'styleguide', to: 'pages#styleguide'

  devise_for :users

  resources :heros do
    resources :adventures do
      resources :comments
    end
    resources :relatives do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end

