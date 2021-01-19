class Api::V1::PlacesController < Api::V1::ApiController

  def index
    user_lat_longs = [params[:latitude], params[:longitude]]

    @locations = Place.near(user_lat_longs, 2)

    render :index
  end

end
