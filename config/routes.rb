Qa::Engine.routes.draw do
  resources :talks
  resources :themes do
      resources :tasks
  end
  resources :posts
  resources :categories
  root 'home#pannel'
  get 'home/pannel'
end
