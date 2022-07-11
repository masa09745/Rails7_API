class Api::V1::SchedulesController < ApplicationController
  def index
    @ship = Ship.find(params[:ship_id])
    @schedules = @ship.schedules
    render json: @schedules
  end
end
