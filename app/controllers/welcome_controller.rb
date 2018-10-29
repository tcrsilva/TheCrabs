class WelcomeController < ApplicationController
   def index 
        cookies[:curso] = "Desenvolvimento para servidores I - Crabs App [COOKIE]"
        session[:curso] = "Desenvolvimento para servidores I - Crabs App [SESSION]"
        @nome_projeto = params[:nome]
        @curso = params[:curso]
   end
end

