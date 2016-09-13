Rails.application.routes.draw do
  get '/mission', to: 'pages#mission'
  root 'works#index'

  resources :works
end
