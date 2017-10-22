class PicturesController < ApplicationController

  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  # before_action :ensure_user_owns_picture
  #lets compare the crrent_user's id to the suer_id of the picture that the user id trying to edit, update, delete

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

  def load_picture
    @picture = Picture.find(params[:id])
    #with this line of code, we can remove the exact line from the edit, update and destroy actions elsewhere in our code

  end


  def create
    @picture = Picture.new
    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    @picture.url = params[:picture][:url]
    @picture.user_id = @current_user

      if @picture.save
        redirect_to "/pictures"
      else
        render :new
      end


  end

  def edit
    # @picture = Picture.find(params[:id])
  end
  def update
    # @picture = Picture.find(params[:id])

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
    # @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to '/pictures'

  end




end
