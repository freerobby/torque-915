class Dummy
  include TorqueBox::Messaging::Backgroundable

  always_background :foo, :persistent => false

  def foo
    Rails.logger.warn "Entered job foo. About to sleep for 10 seconds."
    sleep 10
    Rails.logger.warn "Sleeping complete."
  end
end
