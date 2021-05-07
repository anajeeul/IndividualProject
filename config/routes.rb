Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get  'about' => 'pages#about', as: :about
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Testing
end
