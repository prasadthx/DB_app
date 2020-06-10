Rails.application.routes.draw do
  root "welcome#hello"
  get 'articles/table_format' => "articles#table_format"
  get 'welcome/about' => "welcome#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles

end
