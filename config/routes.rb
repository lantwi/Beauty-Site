Rails.application.routes.draw do
 root to: "users#new"
 resources :users, only: [:new, :create, :show, :destroy]
 resources :songs

 resources :artists

 get 'sessions/new' => 'sessions#new'
 post 'sessions' => 'sessions#create'
 delete 'sessions' => 'sessions#destroy'
end
end
