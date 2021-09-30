class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
       if user&.authenticate(password: params[:password])
        session[:user_id] = user.id
        render json: user
       else
        rensder json: {error: "Unauthorized"} , status: :unauthorized
       end
    end

    def destroy
        session.delete :user_id
        head :no_content

    end

end
