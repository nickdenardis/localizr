class WebsitesController < ApplicationController
  def index
  	@website = Website.new
  end

  def create 
  	# Setup the data from the form
  	@website = Website.new params[:website]

  	# Save the website to the DB
  	if @website.save
  		redirect_to website_path(@website), :flash => { :notice => "Successfully localized #{@website.url}" }
  	else
  		redirect_to :back, :flash => { :error => "Something went wrong localizing your site." }
  	end
  end

  def show
    # Find the site in the DB
    @website = Website.find(params[:id])

    # Ensure the site is owned by this user
    if !@website
      redirect_to :back, :flash => { :error => 'Not a valid website.' }
    end
  end
end
