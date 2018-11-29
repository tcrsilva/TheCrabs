Rails.application.routes.draw do
<<<<<<< HEAD

  resources :events
  get 'calendar/schedule'
=======
  resources :events
<<<<<<< HEAD
  resources :predios
=======
>>>>>>> 7b9cec20081499ba1a2475a3f63e8ec6c669ca18
>>>>>>> 64aed19c80709ca63e2a3d549f31c0eec2b432cf

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
