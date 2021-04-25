class UserDoctorMessagesController < ApplicationController
    def index
        joiners = UserDoctorMessage.all
        render json: joiners
    end

    def show
        joiner = UserDoctorMessage.find(params[:id])
        render json: joiner
    end

    def create
        joiner = UserDoctorMessage.new(user_doctor_message)
        if joiner.save
          render json: joiner
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    private

    def user_doctor_message
        params.permit(:user_id, :doctor_id, :message_id)
    end
end
