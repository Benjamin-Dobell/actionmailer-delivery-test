ActiveSupport.on_load(:action_mailer) do
  Rails.application.config do
    config.action_mailer.delivery_method = :foo
    config.action_mailer.foo_settings = {
        prop_test: true
    }
  end
end
