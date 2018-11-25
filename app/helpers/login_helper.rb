module LoginHelper
    def log_in(user)
        session[:user_id] = user.id
       # @current_user = @current_user || Usuario.find(id: user.id)
    end
    
    def log_out(user)
        session.delete(:user.id)
        #@current_user = nil
    end
    
    def logged_in?
        !session[:user_id].nil?
        # o ponto ! significa negação/ não
        #!@current_user.nil?
    end
end
