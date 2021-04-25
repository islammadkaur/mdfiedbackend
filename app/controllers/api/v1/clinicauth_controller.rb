class Api::V1::ClinicauthController < ApplicationController
    
  def create 
    clinic = Clinic.find_by(email: params[:email])  
        if clinic && clinic.authenticate(params[:password])
            payload = {doctor_id: clinic.id}
            hmac_secret = "my_secret"
            token = JWT.encode(payload, hmac_secret, "HS256")
            render json: {clinic: ClinicSerializer.new(clinic), token: token}
        else
            render json: {error: " Username or password do not exist."}
        end 
    end

    def show
        token = request.headers[:Authorization].split(" ")[1]
        decoded_token = JWT.decode(token, "my_secret", true, {algorithm: "HS256"})
        clinic_id = decoded_token[0]["clinic_id"]
        clinic = Clinic.find(clinic_id)
        if clinic 
            render json: {clinic: ClinicSerializer.new(clinic)}
        else
            render json: {error: "Invalid token."}
        end
    end

end
