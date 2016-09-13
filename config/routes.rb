Rails.application.routes.draw do
  root 'pages#home'
  get '/mission', to: 'pages#mission'

  resources :works
end
