class ImagesController < ApplicationController
  
  before_filter :find_gallery
  
  def find_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end
  
  def create
    @image = @gallery.images.create(params[:image])
    if @image.save
      redirect_to @gallery
    else
      render :show
    end
  end
  
  def destroy
    @image = @gallery.images.find(params[:id])
    @image.destroy
    redirect_to @gallery
  end
  
end
