class AppointmentMailer < ApplicationMailer
  def new_appointment()
    @patient = "waluka"
    @url  = 'https://doctor-appointment-creator.netlify.app/'
    mail(to: "cwaluka@yahoo.com", subject: 'New Appointment Created')
  end
end
