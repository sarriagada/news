News::Application.routes.draw do

  resources :categories


  resources :tags


  resources :notes


  root :to => 'home#index'
end
