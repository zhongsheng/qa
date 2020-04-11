Qa::Engine.routes.draw do
  resources :talks
  resources :themes do
    resources :tasks do
      member do
        get 'archive'
        get 'done'
      end
    end
  end
  resources :posts
  resources :categories
  root 'home#pannel'
  get 'home/pannel'
end
