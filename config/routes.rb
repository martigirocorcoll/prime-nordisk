Rails.application.routes.draw do
  resources :projects
  resources :tasks
  resources :cobros
  resources :compradors
  resources :sales
  resources :participations
  resources :investments
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
