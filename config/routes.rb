Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'
  resources :actors do
  	resources :comments, module: :actors
  end

  resources :movies do
  	resources :comments, module: :movies
  end
end
