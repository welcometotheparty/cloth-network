Rails.application.routes.draw do
  resources :items
  devise_for :users
  root to: 'pages#home'

 #  get '/search' => 'pages#search', :as => 'search_page'
  get '/search' => 'pages#search', as: 'search_page'
  
  get ":username" => "pages#profile", as: :profile


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
