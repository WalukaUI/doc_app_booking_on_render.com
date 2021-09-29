class PatientsController < ApplicationController
    # before_action :authorize, only: [:show]

    def index
     patient=Patient.all
     render json: patient.to_json(except: [:created_at, :updated_at, :username, :password_digest])
    end
    
    def create
     patient = Patient.create(patient_params)
    if patient.valid?
    #   session[:patient_id] = patient.id
      render json: patient, status: :created
    else
      render json: { error: patient.errors.full_messages }, status: :unprocessable_entity
    end
    end
    def destroy
      patient = Patient.destroy(params[:id])
      render json: {message: "Patient deleted"}
    end
    def show
    #   patient = Patient.find_by(id: session[:patient_id])
      patient = Patient.find_by(id: params[:id])
      render json: patient.to_json(except: [:created_at, :updated_at, :username, :password_digest], include: [comment: {except: [:created_at, :updated_at]}]) 
    end
  
    private
    # def authorize
    #   return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :patient_id
    # end

    def patient_params
      params.permit(:first_name, :last_name, :username, :email, :contact_number, :clinic_location, :role, :password, :password_confirmation)
    end
end
