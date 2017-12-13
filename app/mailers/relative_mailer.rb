class RelativeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def send_invitation(relative)
    @relative = relative
    @hero     = relative.hero

    mail(to: @relative.email, subject: "#{relative.inviter.firstname} vous invite à participer aux aventures de #{relative.hero.firstname}")
  end
end
