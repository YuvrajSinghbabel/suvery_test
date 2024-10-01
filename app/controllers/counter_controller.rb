class CounterController < ApplicationController
	protect_from_forgery
	# @@counter = 0
	def get_counter
		render json: {counter: IncrementCounterJob.current_counter}
	end

	def increment_counter
		IncrementCounterJob.perform_now
		render json: {message: "incrementing in the background"}
	end
end

