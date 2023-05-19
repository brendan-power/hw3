class PlacesController < ApplicationController

def index
  @places = Place.all
end

def show
  @places = Place.find_by[{"id" => params["id"]}]
end


def new
  @places = Place.new
end

def create
  @places = Place.new
  # start with a new Company
  # assign user-entered form data to Company's columns
  @places["name"] = params["name"]
  # save Company row
  @places.save
  # redirect user
  redirect_to "/places" 
end



end
