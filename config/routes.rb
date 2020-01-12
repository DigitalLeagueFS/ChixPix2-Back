Rails.application.routes.draw do
  put '/login' , to: 'users#login', as: 'ex_user'
  post '/createclients' , to: 'clients#addClients', as: 'cladd'
  get '/check', to: 'users#check', as: 'check'
  get '/user', to: 'users#profile', as: 'user'
  get '/companies', to: 'companies#showAllCompanies', as: 'com'
  get '/clients', to: 'clients#showClients', as: 'cl'
  get '/getClient/:id',to: 'clients#getClient', as:'clIn'
end
