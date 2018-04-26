class PhotosController < ApplicationController
  before_action :set_photo, :only => [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save #如果能成功執行@photo.save，表示有通過驗證，可放心導入index頁面
      redirect_to photos_url
    else
      render :action => :new #反之驗證失敗，留在原頁面請使用者把資料填完
    end
  end

  def update
    if @photo.update_attributes(photo_params)
      redirect_to photo_path(@photo)
    else
      render :action => :edit
    end
  end

  def destroy
    @photo.destroy

    redirect_to photos_url
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :date, :description, :file_location)
  end
end
