News::Application.routes.draw do

  mount RedactorRails::Engine => '/redactor_rails'

  devise_for :users do
  	get 'admin' => 'devise/sessions#new'
  end

  resources :comments


  resources :attachments


  resources :categories


  resources :tags


  resources :notes


  root :to => 'home#index'
end
