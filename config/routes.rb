Rails.application.routes.draw do
  
  devise_scope :user do
    post "users/guest_sign_in",to: "users/sessions#guest_sign_in"
  end
  devise_for :users
  
  root to: "homes#top"
  get "home/about" => "homes#about",as: "about"
  resources :users,only:[:index,:edit,:update,:show]
  resources :books,only:[:index,:create,:show,:edit,:update,:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
