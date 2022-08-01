class Api::V1::SectionsController < ApplicationController
  def index
    @section = Section.all
    render json: @section
  end

  def roles
    @section = Section.includes(:roles).find(params[:id])
    @roles = @section.roles
    render json: @roles
  end
end
