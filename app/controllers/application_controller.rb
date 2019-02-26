class ApplicationController < ActionController::Base
  def index
    mail = TestMailer.test_mail

    begin
      mail.deliver!
      render plain: "Delivered using #{mail.delivery_method.class}"
    rescue => e
      render plain: "Attempted delivery with #{mail.delivery_method.class}: #{e.message}"
    end
  end
end
