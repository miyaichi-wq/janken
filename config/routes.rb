Rails.application.routes.draw do
  root 'jankens#new'
  resources :users, only: %i[new index create]
end
