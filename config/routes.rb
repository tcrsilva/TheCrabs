Rails.application.routes.draw do
  
  
  resources :finances
  resources :eventos
  resources :information
  resources :predios

  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  
  devise_for :admins
  devise_for :users
  
 
  
  get 'usuario/new'
  get 'usuario/show/:id' => "usuario#show", as: "usuario_show"
  post 'usuario/create' #post pois vai pro banco
  get 'login' => "login#login", as: "login"
  get 'logout' => "login#logout#", as: "logout"
  post 'auth' => "login#auth", as: "login_auth"
  get 'login/useropc'
  get 'start/home'
  #get 'welcome/index'
  
  root 'start#home'
end
