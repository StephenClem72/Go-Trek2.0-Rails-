class TrailsController < ApplicationController

  def index
    @counter = 1
    # @searched_city = params[:search_input]
    # @search_results = Trail.where(city: params[:search_input])
    look_up_results
  end

  def show
    @trail=TrailsHelper.get_individual_trail()
  end

  private

  def look_up_results
    if params[:search_input] != ""
      @searched_city = params[:search_input]
      @search_results = Trail.where(city: params[:search_input])
    else
      puts params[:current_city]
      @searched_city = params[:current_city]
      @search_results = Trail.where(city: params[:current_city])
    end
  end

end
