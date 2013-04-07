class ImagesController < ApplicationController
  
  before_filter :find_gallery
  
  def find_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end
  
  def create
    @image = @gallery.images.build(params[:image])
    @image.save
    redirect_to @gallery
  end
  
  def destroy
    @image = @gallery.images.find(params[:id])
    @image.destroy
    redirect_to @gallery
  end
  
end
