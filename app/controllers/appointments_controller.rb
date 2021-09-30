class AppointmentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        appointment = Appointment.all
        render json: appointment.to_json(except: [:created_at, :updated_at])
      end

      def show
        appointment = Appointment.find(params[:id])
        render json: appointment.to_json(except: [:created_at, :updated_at]), status: 200
      end

      def create
        appointment = Appointment.create(appointment_params)
        render json: appointment.to_json(except: [:created_at, :updated_at]), status: 201
      end

      def update
        appointment = Appointment.find(params[:id])
        appointment.update!(appointment_params)
        render json: appointment.to_json(except: [:created_at, :updated_at])
      end

      def destroy
        appointment = Appointment.destroy(params[:id])
        render json: {message: "Appointment deleted"}
      end

      private

      def appointment_params
        params.permit(:doctor_id, :patient_id, :comment, :points)
      end

      def render_not_found
        render json: { error: "Comment is not found" }, status: :not_found
      end

      def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end
end
