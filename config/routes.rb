Rails.application.routes.draw do
  resources :bins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "bins#index"
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
