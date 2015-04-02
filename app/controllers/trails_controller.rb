class TrailsController < ApplicationController

  def index
    @counter = 1
    # @searched_city = params[:search_input]
    # @search_results = Trail.where(city: params[:search_input])
    look_up_results
  end

  def show
    @trail = Trail.find(params[:id])
  end

  def new
    @trail = Trail.new
  end

  def create
    @trail = Trail.new(create_trail_params)

    if @trail.save
      redirect_to "http://www.rubyonrails.org"
    else
      render 'new'
    end
  end



  private

  def create_trail_params
    params.require(:trail).permit(:name, :city, :state, :country, :activity_type, :rating, :description, :length)
  end

  def look_up_results
    if params[:search_input] != ""
      @searched_city = params[:search_input]
      @search_results = Trail.where(city: @searched_city)
    else
      @searched_city = params[:current_city]
      @search_results = Trail.where(city: @searched_city)
    end
  end

end
