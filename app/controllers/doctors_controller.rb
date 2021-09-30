class DoctorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def index
        if params[:location_id]
          location = Location.find(params[:location_id])
          doctor = location.doctors
        else
          doctor = Doctor.all
        end
        render json: doctor
    end
  
    def show
          doctor = Doctor.find(params[:id])
          render json: doctor.to_json(except: [:created_at, :updated_at], include: [comment: { except: [:created_at, :updated_at]}]), status: 200
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
