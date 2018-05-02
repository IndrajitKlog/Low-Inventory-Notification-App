class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.welcome_email.subject
  #
  def welcome_email
    @greeting = "Hi"

    mail to: "#{@admin_email}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.stock_status.subject
  #
  def stock_status(product, admin_email, domain)
    @greeting = "Hi"
    @products = product
    @admin_email = admin_email
    @domain = domain
    mail to: "#{@admin_email}", subject: "Low Stock"
  end
end
