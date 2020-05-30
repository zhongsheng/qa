Qa::Engine.routes.draw do
  resources :talks do
  end
  resources :tasks do
    collection do
        get 'search'
    end
  end
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
