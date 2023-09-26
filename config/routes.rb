Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "homes#top"
  resources :books, only: [:new, :index, :show]
  get "home/about" => "homes#about",as:"about"
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
