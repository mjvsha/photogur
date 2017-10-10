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
    @picture = Picture.new
    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]

      if @picture.save
        redirect_to "/pictures"
      else
        render :new
      end
      

  end


end
