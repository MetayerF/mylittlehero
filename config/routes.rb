Rails.application.routes.draw do
  root to: 'pages#home'

  get 'styleguide', to: 'pages#styleguide'

  devise_for :users

  namespace :admin do
    resources :heros do
      resources :adventures
      resources :relatives
    end
    resources :adventures do
      resources :comments
    end
  end

  namespace :editor do
    resources :heros, only: [:show, :index] do
      resources :adventures
      resources :relatives, only: [:show, :index]
    end
    resources :adventures do
      resources :comments
    end
  end

  namespace :viewer do
    resources :heros, only: [:show, :index] do
      resources :adventures, only: [:show, :index]
      resources :relatives, only: [:show, :index]
    end
    resources :adventures do
      resources :comments
    end
  end

end
