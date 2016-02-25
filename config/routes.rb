Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users
  root 'dashboard#index'

  resources :audios

  resources :videos

end
