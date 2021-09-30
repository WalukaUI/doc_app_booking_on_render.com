class LocationsController < ApplicationController
    def index
        if params[:doctor_id]
          doctor = Doctor.find(params[:doctor_id])
          location = doctor.location
        else
          project = Location.all
        end
        render json: project
      end

      def show
        location = Location.find(params[:id])
        render json: location.to_json(except: [:created_at, :updated_at]), status: 200
      end
end
