Rails.application.routes.draw do
  root 'pages#home'
  get '/resume', to: 'pages#resume'
  get '/mission', to: 'pages#mission'

  resources :works
end
