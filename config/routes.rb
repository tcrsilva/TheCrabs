Rails.application.routes.draw do
4
  resources :perfils
  resources :events
  resources :predios
  resources :events

  resources :events
  get 'calendar/schedule'

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
  get 'events/calendar' => "events#calendar", as: "events_calendar"
  
  root 'start#home'
end
