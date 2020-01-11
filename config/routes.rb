Rails.application.routes.draw do
  put '/login' , to: 'users#login', as: 'ex_user'
  get '/check', to: 'users#check', as: 'check'
  get '/user', to: 'users#profile', as: 'user'
  get '/companies', to: 'companies#showAllCompanies', as: 'com'
  get '/clients', to: 'clients#showClients', as: 'cl'
end
