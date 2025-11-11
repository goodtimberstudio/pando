class AuthTokenMailer < ApplicationMailer
  default from: "Pando <pando@goodtimberstudio.com>"

  def otp(auth_token)
    @otp_code = auth_token.code
    @otp_url = sign_in_with_token_url(token: auth_token.token)

    mail(to: auth_token.user.email_address, subject: "Sign in to Pando")
  end
end
