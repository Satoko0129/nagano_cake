Rails.application.routes.draw do
  namespace :customers do
    get 'customers/new'
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    root to: "homes#top"
     get "home/about" => "homes#about", as: "about"
    resources :items
  end
end
