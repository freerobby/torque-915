class DummyController < ApplicationController
  def index
    100.times do
      Dummy.new.foo
    end
    render :text => "Enqueued 100 sleep-10 jobs"
  end
end
