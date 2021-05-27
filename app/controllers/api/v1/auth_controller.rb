class Api::V1::AuthController < ApplicationController

    def create 
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])

            payload = {user_id: user.id}
            hmac_secret = "my_secret"
            token = JWT.encode(payload, hmac_secret, "HS256")

            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {error: " Username or password do not exist."}
        end 
    end

    def show
        token = request.headers[:Authorization].split(" ")[1]
        decoded_token = JWT.decode(token, "my_secret", true, {algorithm: "HS256"})
        user_id = decoded_token[0]["user_id"]

         user = User.find(user_id)

         if user 
            render json: {user: UserSerializer.new(user)}
         else
            render json: {error: "Invalid token."}
         end
    end

end
