Rails.application.routes.draw do
  mount Resque::Server, :at => '/resqu'

  devise_for :users
  root 'dashboard#index'

  resources :audios

  resources :videos

end
