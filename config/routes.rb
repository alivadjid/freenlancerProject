Rails.application.routes.draw do
  # изменение роута по умолчанию
  root 'pages#home'

  devise_for :users, 
              path: '', 
              path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
