class PlacesController < ApplicationController

def index
  @places = Place.all
end

def show
  @places = Place.findy_by[{"id" => params["id"]}]
end




end
