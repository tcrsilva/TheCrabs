class ApplicationController < ActionController::Base
  before_action :set_locale
  
  
  # Metodo para o devise direcionar a rota (rota start alterada para o useropc depois do login)
  protected

  def after_sign_in_path_for(resource)
    # return the path based on resource
    login_useropc_path
  end

  def index
  end 
  
  def set_locale
    if params[:locale]
      cookies[:locale] = params[:locale]
    end
    
    if cookies[:locale]
      if I18n.locale != cookies[:locale]
        I18n.locale = cookies[:locale]
      end
    end
  end
end
