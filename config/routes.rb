Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#about",as: "about"
  resources :users,only: [:index,:edit]
  resources :books,only: [:index,:create,:show,:edit,:destroy]
  resources :books,except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
