Rails.application.routes.draw do
  match "/delayed_job" => DelayedJobWeb, :anchor => false, via: [:get, :post]

  devise_for :users
  root 'dashboard#index'

  resources :audios

  resources :videos

end
