Rails.application.routes.draw do
  put '/login' , to: 'users#login', as: 'ex_user'
  post '/clients' , to: 'clients#create', as: 'cladd'
  get '/check', to: 'users#check', as: 'check'
  get '/user', to: 'users#show', as: 'user'
  get '/companies', to: 'companies#show', as: 'com'
  get '/clients', to: 'clients#show', as: 'cl'
  get '/clients/:id',to: 'clients#show_client', as:'clIn'
  get '/companies/name', to: 'companies#show_name', as:'cgetCompName'
  delete '/clients/:id', to: 'clients#delete', as:'dc'
  delete '/companies/:id', to: 'companies#delete', as:'dlc'
  post '/companies', to: 'companies#create',as:'crc'
  get '/tasks', to: 'tasks#show', as:'sht'
end
