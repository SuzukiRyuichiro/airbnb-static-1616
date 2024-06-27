require 'open-uri'

class FlatsController < ApplicationController
  before_action :get_flats

  def index; end

  def show
    # Get the id of the flat the user wants
    # Look inside the JSON and find the hash with the flat info
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end

  private

  def get_flats
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(URI.open(url).read)
  end
end
