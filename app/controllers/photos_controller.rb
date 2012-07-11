class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end
  
  def show
    @photo = Photo.find(params[:id])
  end
  
  def new
    @photo = Photo.new album_id: params[:album_id]
  end
  
  def edit
    @photo = Photo.find(params[:id])
  end
  
  def create
    @photo = Photo.new(params[:photo])
    
    if @photo.save
      redirect_to @photo.album, notice: 'Photo was successfully uploaded.'
    else
      render action: "new"
    end
  end
  
  def update
    @photo = Photo.find(params[:id])
    
    if @photo.update_attributes(params[:photo])
      redirect_to @photo, notice: 'Photo was successfully updated'
    else
      render action: "edit"
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_url
  end

end
