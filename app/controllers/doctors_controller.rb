class DoctorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def index
        if params[:location_id]
          location = Location.find(params[:location_id])
          doctor = location.doctors
        elsif params[:patient_id]
          patient = Patient.find(params[:patient_id])
          doctor = patient.doctors
        else
          doctor = Doctor.all
        end
        render json: doctor
    end
  
    def show
          doctor = Doctor.find(params[:id])
          render json: doctor.to_json(except: [:created_at, :updated_at], include: [comment: { except: [:created_at, :updated_at]}]), status: 200
    end

    def create
        doctor = Doctor.create!(doctor_params)
        render json: doctor.to_json(except: [:created_at, :updated_at]), status: :created
    end

    def update
        doctor = Doctor.find(params[:id])
        doctor.update!(doctor_params)
        render json: doctor.to_json(except: [:created_at, :updated_at])
    end

    def destroy
        doctor = Doctor.destroy(params[:id])
        render json: {message: "doctor deleted"}
    end

    def location_index
        doctor = Location.find(params[:location_id])
        location=doctor.locations
        render json: location
    end

    private
    
    def doctor_params
        params.permit(:first_name, :last_name, :email, :education, :speciality, :role)
    end

    
    def render_not_found
        render json: { error: "Doctor not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
