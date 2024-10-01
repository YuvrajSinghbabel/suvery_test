class IncrementCounterJob < ApplicationJob
  queue_as :default
  @@counter = 0
  def perform
    @@counter +=1
  end
  def self.current_counter
    @@counter
  end
end
