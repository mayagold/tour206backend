require 'rubygems'
require 'httparty'

class EventsController < ApplicationController
  def index
    response = HTTParty.get('https://www.eventbriteapi.com/v3/events/search/?q=concert&location.address=seattle&token=ISIHLNSRVCTAIEHALGNE')

@events = render json: response.body
puts @events
  end
end
