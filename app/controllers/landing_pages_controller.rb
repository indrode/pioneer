# landing_pages_controller.rb

class LandingPagesController < ApplicationController
  def index
    @hello_world = 'Hi, world!'
  end
end
