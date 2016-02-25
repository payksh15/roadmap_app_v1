Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'

  resources :audios

  resources :videos

end
