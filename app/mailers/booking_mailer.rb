class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.welcome.subject
  #
  def welcome
    @user = user

    mail(to: @user.email, subject: "Booking created!")
  end
end
