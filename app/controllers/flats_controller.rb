require "open-uri"
class FlatsController < ApplicationController
  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    return JSON.parse(open(url).read)
  end
  def index
    @flats = get_flats
  end

  def show
    @show = get_flats.find{|flat| flat['id'] == params[:id].to_i}
  end
end
