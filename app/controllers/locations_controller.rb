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
end
