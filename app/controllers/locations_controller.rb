class LocationsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
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

      def create
        location = Location.create(location_params)
        render json: location.to_json(except: [:created_at, :updated_at]), status: 201
      end

      def destroy
        location = Location.destroy(params[:id])
        render json: {message: "Location deleted"}
      end

      private

      def location_params
        params.permit(:name, :address_line_one, :address_line_two, :city, :zipcode, :contact_number, :latitude, :longitude)
      end

      def render_not_found
        render json: { error: "Location is not found" }, status: :not_found
      end

      def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end
end
