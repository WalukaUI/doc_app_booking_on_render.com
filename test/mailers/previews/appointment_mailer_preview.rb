# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview
  def new_appointment
    AppointmentMailer.with(patient: Patient.last).new_appointment
  end

end
