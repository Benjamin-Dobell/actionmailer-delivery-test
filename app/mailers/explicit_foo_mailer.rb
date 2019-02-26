class ExplicitFooMailer < ApplicationMailer
  default delivery_method: :foo

  def test_mail
    mail
  end
end
