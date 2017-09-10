require 'rubygems'
require 'httparty'

url = 'https://www.eventbriteapi.com/v3/events/search/?q=concert&location.address=seattle&token=ISIHLNSRVCTAIEHALGNE'

class EventsController < ApplicationController
  def index
    response = HTTParty.get(url)
    JSON.parse(response)

render json: { data: response.body, message: response.message }
  end
end
