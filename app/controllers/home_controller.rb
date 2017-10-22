class HomeController < ApplicationController
  def show
    render json: {:message => "Welcome to Appointment-API RAILS 5 WITH DEVISE TOKEN AUTH"}
  end
end
