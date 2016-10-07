Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :slides
  resources :settings
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :abouts, :path => "about"
  resources :travels, :path => "article" 
  resources :events, :path => "event"
  resources :ecategories
  resources :tcategories
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
