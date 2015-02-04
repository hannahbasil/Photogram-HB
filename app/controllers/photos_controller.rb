class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

    render 'index'
  end

  def show
    @photo = Photo.find_by({:id => params["id"]})
    render 'show'
  end

  def new_form

    render 'new_form'
  end

  def create_row
    @photo_new = Photo.new

    @photo_new.id = params["the_id"]
    @photo_new.source = params["the_source"]
    @photo_new.caption = params["the_caption"]

    @photo_new.save

    render 'create_row'
  end

  def destroy

    @photo = Photo.find_by({ :id => params["id"] })

    @photo.destroy

    render 'destroy'
  end

  def edit_form
    @photo = Photo.find_by({ :id => params["id"] })

  end
end

