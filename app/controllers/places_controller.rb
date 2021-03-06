class PlacesController < ApplicationController

  def index
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.name
    end
    @places = Place.all
  end

end
