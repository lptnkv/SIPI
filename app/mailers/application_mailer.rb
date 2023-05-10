class ApplicationMailer < ActionMailer::Base
  # default from: ENV["MAILJET_SENDER"]
  # serjaypiv@yandex.ru
  default from: 'serjaypiv@yandex.ru'

  layout 'mailer'
end
