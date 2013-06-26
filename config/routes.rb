News::Application.routes.draw do

  resources :comments


  resources :attachments


  resources :categories


  resources :tags


  resources :notes


  root :to => 'home#index'
end
