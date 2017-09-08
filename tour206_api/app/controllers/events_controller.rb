require 'rubygems'
require 'httparty'

class EventsController < ApplicationController
  def index
    response = HTTParty.get('https://www.eventbriteapi.com/v3/events/search/?q=concert&location.address=seattle&token=ISIHLNSRVCTAIEHALGNE')

render json: { data: response.body, message: response.message }
  end
end
