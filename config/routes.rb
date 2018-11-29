Rails.application.routes.draw do

  resources :events
  get 'calendar/schedule'

  resources :events

  resources :predios

  namespace :profiles_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  
  devise_for :profiles
  devise_for :admins
  
  get 'usuario/new'
  get 'usuario/show/:id' => "usuario#show", as: "usuario_show"
  post 'usuario/create' #post pois vai pro banco
  get 'login' => "login#login", as: "login"
  get 'logout' => "login#logout#", as: "logout"
  post 'auth' => "login#auth", as: "login_auth"
  get 'login/useropc'
  get 'start/home'
  get 'welcome/index'
  get 'events/index/:id' => "events#root"
  get 'visitors/calendar'
  
  root 'start#home'
end
