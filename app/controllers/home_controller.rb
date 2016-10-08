class HomeController < ApplicationController
  def index
  	@slides = Slide.all.order("created_at ASC")
  	@settings = Setting.all.order("created_at ASC").limit(1)
  	@travels = Travel.all.order("created_at DESC").limit(3)
  	@events = Event.all.order("created_at DESC").limit(3)
  end
end
