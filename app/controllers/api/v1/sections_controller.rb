class Api::V1::SectionsController < ApplicationController
  def index
    @sections = Section.all
    render json: @sections
  end

  def roles
    @section = Section.includes(:roles).find(params[:id])
    @roles = @section.roles
    render json: @roles
  end
end
