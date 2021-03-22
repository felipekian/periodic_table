Rails.application.routes.draw do

  get 'table/index'


  root to: "welcome#index"
  resources :table, only: %i[index show]
end
