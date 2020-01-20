Rails.application.routes.draw do
  put '/login' , to: 'users#login', as: 'ex_user'
  post '/createclients' , to: 'clients#addClients', as: 'cladd'
  get '/check', to: 'users#check', as: 'check'
  get '/user', to: 'users#profile', as: 'user'
  get '/companies', to: 'companies#showAllCompanies', as: 'com'
  get '/clients', to: 'clients#showClients', as: 'cl'
  get '/getClient/:id',to: 'clients#getClient', as:'clIn'
  get '/getcompaniesname', to: 'companies#getCompaniesName', as:'cgetCompName'
  delete '/deleteUser/:id', to: 'clients#deleteClients', as:'dc'
  put '/changeinfo/:id', to: 'clients#changeInfo', as: 'cI'
  delete '/deleteCompanies/:company_name', to: 'companies#deleteCompanies', as: 'dC'
end
