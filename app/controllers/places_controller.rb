class PlacesController < ApplicationController

  def index
    load_places

    @places = Place.all
  end

  private

  def load_places
    @places_default = Gmaps4rails.build_markers(Place.all) do |plot, marker|
      marker.lat plot.latitude
      marker.lng plot.longitude

      marker.picture({
        "width" => 35,
        "height" => 30
      })

      marker.infowindow render_to_string(:partial => "/places/info", :locals => {:name => plot.name})
    end
  end

end
