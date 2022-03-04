class SessionController < ApplicationController
    def new
        @usuario = Usuario.new
    end
    def create
    end
    
    def destroy
      sign_out
      redirect_to new_session_path
    end  
end
