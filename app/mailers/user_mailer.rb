class UserMailer < ActionMailer::Base
  DEFAULT_TO = "http://localhost:1080/"
  default from: "info@voenbank.com"

  def login_email(user)
    @user = user
    @url = "http://localhost:3000"
    mail(to: DEFAULT_TO, subject: 'Спасибо что авторизировались в нашей системе!')
  end

  def register_email(user)
    @user = user
    mail(to: DEFAULT_TO, subject: "ВОЕНБАНК. Регистрация")
  end
end
