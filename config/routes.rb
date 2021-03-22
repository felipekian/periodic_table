Rails.application.routes.draw do

  #get 'table/index'
  get 'table', controller:'table', action:'index'
  get 'table/:name', controller:'table', action:'show'

  root to: "welcome#index"
  resources :table, only: %i[index show]
end
