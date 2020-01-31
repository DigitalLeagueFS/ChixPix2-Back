Rails.application.routes.draw do
  put '/login' , to: 'users#login', as: 'ex_user'
  post '/clients' , to: 'clients#create', as: 'cladd'
  post '/companies', to: 'companies#create',as:'crc'
  post '/tasks',to:'tasks#create', as:'crt'
  get '/check', to: 'users#check', as: 'check'
  get '/user', to: 'users#show', as: 'user'
  get '/users/name', to: 'users#show_name',as: 'sh_n'
  get '/companies', to: 'companies#show', as: 'com'
  get '/clients', to: 'clients#show', as: 'cl'
  get '/clients/names',to: 'clients#show_name',as:'shcl'
  get '/clients/:id',to: 'clients#show_client', as:'clIn'
  get '/companies/name', to: 'companies#show_name', as:'cgetCompName'
  get '/tasks', to: 'tasks#show', as:'sht'
  get '/tasks/user',to: 'tasks#user_tasks',as:'ust'
  get '/tasks/archive',to:'tasks#archive', as:'arch'
  get '/tasks/:id', to: 'tasks#show_task', as:'sto'
  delete '/clients/:id', to: 'clients#delete', as:'dc'
  delete '/companies/:id', to: 'companies#delete', as:'dlc'
  delete '/tasks/:id',to: 'tasks#delete', as:'dlt'
  put '/tasks/:id', to:'tasks#take', as:'ttsk'
  put '/tasks/complete/:id',to:'tasks#complete',as:'cts'
end
