Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { :registrations => 'registrations' }

  root 'welcome#home'
  get 'blog/new', to: 'articles#new'
  get 'blog', to: 'articles#index', as: 'articles'
  get 'blog/:title', to: 'articles#show', as: 'article'
  patch 'blog/:id', to: 'articles#update'
  post 'blog', to: 'articles#create'
  delete 'blog/:id', to: 'articles#destroy'
  get 'blog/:id/edit', to: 'articles#edit', as: 'edit_article'
  resources :projects, except: [:show, :index]
  resources :tags, except: [:show, :index , :new]
  get 'tags/new', to: 'tags#new', as: 'new_tag'
  resources :topics
end
