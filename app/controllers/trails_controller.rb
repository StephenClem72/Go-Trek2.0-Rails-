class TrailsController < ApplicationController

  def index
    @counter = 1
    look_up_results
  end

  def show
    @trail=TrailsHelper.get_individual_trail()
  end

  private

  def look_up_results
    if params[:search_input]
      @search_results = TrailsHelper.get_searched_trails(params[:search_input])
    else
      @search_results = TrailsHelper.get_nearby_trails(params[:current_lat], params[:current_long])
    end
  end

end
