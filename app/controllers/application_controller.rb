class ApplicationController < ActionController::Base
  def index
    mail = TestMailer.test_mail
    mail.deliver
    render plain: "Delivered using #{mail.delivery_method.class}"
  end
end
