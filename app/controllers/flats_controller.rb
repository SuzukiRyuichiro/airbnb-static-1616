require 'open-uri'

class FlatsController < ApplicationController
  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(URI.open(url).read)
  end

  def show
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    flats = JSON.parse(URI.open(url).read)

    # Get the ID in the URL
    id_in_url = params[:id].to_i
    # find the matchning ID flat from the flats array
    # assing the matching flat to @flat
    @flat = flats.find { |flat| flat['id'] == id_in_url }
  end
end
