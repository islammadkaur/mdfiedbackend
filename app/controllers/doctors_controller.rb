class DoctorsController < ApplicationController

    def index 
        doctors = Doctor.all
        render json: doctors 
    end

    def show
        doctor = Doctor.find_by_id(params[:id])
        render json: doctor
    end

    def create
        doctor = Doctor.new(doctor_params)
        if doctor.save
            NewDoctorEmailMailer.notify_doctor(doctor).deliver_later
            render json: doctor, except: [:created_at, :updated_at]
        else
            render json: { error: doctor.errors.full_messages }
        end
    end

    def update
        doctor = Doctor.find_by_id(params[:id])
        if doctor.update(doctor_params)
            render json: doctor
        else
            render json: { error: "Oops, something went wrong." }
        end
    end

    def destroy
        doctor = Doctor.find_by_id(params[:id])
        if doctor.destroy
            render json: doctor
        else
            render json: { error: "Oops, something went wrong." }
        end
    end

    private

    def doctor_params
        params.permit(:first_name, :last_name, :date_of_birth, :email, :password, :address, :gender, :specialty_id)
    end

end
