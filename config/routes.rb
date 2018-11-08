Rails.application.routes.draw do
  get 'login/useropc'
  get 'start/home'
  get 'welcome/index'
  resources :predios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'start#home'
end
