class LoginController < ApplicationController
  def useropc
  end
  
  include LoginHelper
  
  def login
  end

  def logout
    log_out
    redirect_to root_path
  end

  def auth
    # @parametros = {email: "teste@teste.com",password: "122"}
    @parametros = login_params
    @user = Usuario.find_by(email: @parametros[:email])
    if(@user && @user.authenticate(@parametros[:password]))
      log_in @user
      redirect_to usuario_show_path(@user)
    else
      redirect_to login_path
    end
  end
  
  private 
    def login_params
      # VAI LER OS CONTEUDOS ESCRITOS NOS CAMPOS DO FORM
      params.require(:login).permit(:email, :password)
    end
end
