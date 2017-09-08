require 'rubygems'
require 'httparty'
require 'json'

class EventsController < ApplicationController
  def index
    response = HTTParty.get('https://www.eventbriteapi.com/v3/events/search/?q=concert&location.address=seattle&token=ISIHLNSRVCTAIEHALGNE')

#     .parsed_response
# respond_to do |format|
#   format.json {render :json => JSON.parse(response)}

events = render json: { data: response.body, message: response.message }

puts events

  end
end
