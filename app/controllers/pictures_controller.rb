class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    #store the picture by finding its id in the params hash and selecting for it with its id 

  end


end
