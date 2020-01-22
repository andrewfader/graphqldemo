class CarsController < ApplicationController
  def update
    car = Car.find(params[:id])
    car.update!(params["car"])
  end
end
