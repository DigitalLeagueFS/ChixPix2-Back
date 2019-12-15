Rails.application.routes.draw do
  put '/login' , to: 'users#login', as: 'ex_user'
  put '/check', to: 'users#check', as: 'check'
  get '/user', to: 'users#profile', as: 'user'
end
