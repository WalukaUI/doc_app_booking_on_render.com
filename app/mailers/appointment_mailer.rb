class AppointmentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.appointment_mailer.new_appointment.subject
  #
  def new_appointment
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
