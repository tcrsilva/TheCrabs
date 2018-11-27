Rails.application.routes.draw do
<<<<<<< HEAD
  
=======
  resources :events
  get 'calendar/schedule'
>>>>>>> 58b01509e04a6a07b97eafe7057cf587149a76cd
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
  get 'calendar/schedule'
  resources :predios
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   root 'start#home'
end
