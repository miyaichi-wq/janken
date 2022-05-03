Rails.application.routes.draw do
  root 'jankens#new'
  resource :janken, only: %i[new index create show]
  resources :users, only: %i[new index create]
end
