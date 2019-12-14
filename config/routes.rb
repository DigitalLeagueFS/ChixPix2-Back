Rails.application.routes.draw do
  put '/login' , to: 'users#login', as: 'ex_user'
  put '/check', to: 'users#check', as: 'check'
end
