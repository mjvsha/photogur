class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    #store the picture by finding its id in the params hash and selecting for it with its id

  end

  def new
    @picture = Picture.new
    #we are making a new instance of the Picture model


  end

  def create
    render text: "Here's a post request to '/pictures' with the data URL: #{params}"

  end


end
