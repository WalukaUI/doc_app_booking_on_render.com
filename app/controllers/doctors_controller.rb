class DoctorsController < ApplicationController
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
        params.permit(:name, :section, :role, :department_id, :city_id)
    end
end
