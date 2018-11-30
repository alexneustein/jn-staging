Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  resources :images

  # routes for the homepage top six components
  get '/images-top', to: 'images#indextop'

end
