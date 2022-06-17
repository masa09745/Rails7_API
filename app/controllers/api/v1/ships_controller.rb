class Api::V1::ShipsController < ApplicationController

  def index
    @Ships = Ship.all
    render json: @ships
  end
end
