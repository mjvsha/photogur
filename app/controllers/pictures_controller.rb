class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @older_than = Picture.more_than_month
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

  def edit
    @picture = Picture.find(params[:id])
  end
  def update
    @picture = Picture.find(params[:id])

    @picture.title  = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url    = params[:picture][:url]

    if @picture.save
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to '/pictures'

  end

end
