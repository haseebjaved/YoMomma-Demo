require 'open-uri'
require 'json'
require 'geocoder'

class DealsController < ApplicationController
 
  def index
    
    @location = Geolocation.last
    @deals = JSON.parse(open("http://api.groupon.com/v2/deals/?client_id=0c28cc83918dfc63dcf8d6a798613b6fbb6c6c3e&lat=#{@location["latitude"]}&lng=#{@location["longitude"]}").read)
    
    @type = ["Nester", "Kitchen Couture", "Healthy Living", "Fountain of Youth", "Gadget + Gear",
                "Home Improvement", "Audiophile", "Threads", "Cultural Pursuits", "Pampered", 
                "Sporting Life", "Well-Groomed", "The Finer Things", "Photographic", "Just Dance",
                "Girls Night Out"]
    
  end

  def new
    	@location = Geolocation.new
    end
    
    def create
    	@location = Geolocation.new(params[:geolocation])
    	@location.save
    	redirect_to '/deals'
    end
    
    def show
    end

  end
