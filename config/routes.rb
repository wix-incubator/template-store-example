TsExample::Application.routes.draw do
  resources :templates
  resources :purchases
  resources :wix_users
  resources :notifications do
    member do
      post 'return'
      get 'cancel'
    end
  end
  get '/how-it-works', to: 'statics#how_it_works'
  get '/about', to: 'statics#about'
  get '/contact-us', to: 'statics#contact_us'
  get '/thank-you', to: 'statics#thank_you'

  root :to => 'templates#index'
end
