Rails.application.routes.draw do

  get '/public/about', page: 'about'
  get '/public/author', page: 'author'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
