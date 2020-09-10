Rails.application.routes.draw do
  resources :feeds
  get 'sessions/new'
  root 'users#index'
  resources :posts do
   collection do
     post :confirm
   end
 end

 resources :users
 resources :sessions
end
