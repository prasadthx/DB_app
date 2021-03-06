Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  root "welcome#hello"
  get 'articles/table_format' => "articles#table_format"
  get 'welcome/about' => "welcome#about"
  get 'signup' => "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
  resources :users, except: [:new]

end
