Rails.application.routes.draw do
  devise_for :users
  
  root 'posts#index'
  
  resources :posts
  resources :polls do
    resources :poll_items, except: :show
  end
  
  post 'votes/create'

end
 
