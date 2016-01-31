Rails.application.routes.draw do
  root 'pages#home'
  get '/resume', to: 'pages#resume'
  get '/mission', to: 'pages#mission'
  get '/resume', to: 'pages#resume'

  resources :works
end
