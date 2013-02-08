class WebsitesController < ApplicationController
  def index
  	@website = Website.new
  end
end
