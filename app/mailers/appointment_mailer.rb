class AppointmentMailer < ApplicationMailer
  def new_appointment(appointment)
    @newBooking = appointment
    appointment_patient=Patient.find(@newBooking.patient_id)
    @patientOftheBooking=appointment_patient
    @url  = 'https://doctor-appointment-creator.netlify.app/patientlogin'
    mail(to: @patientOftheBooking.email, subject: 'New Appointment Created')
  end
end
