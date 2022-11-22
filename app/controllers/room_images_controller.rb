class RoomImagesController < ApplicationController
  def create
    @room_image = Room_image.new(
      room_id: params[:room_id],
      url: params["url"],
    )
    @room_image.save
  end

  def update
    @room_image = Room_image.find_by(params[:id])
    @room_image = Room_image.new(
      room_id: params[:room_id],
      url: params["url"],
    )
  end

  def destroy
    @room_image = Room_image.find_by(id: params["id"])
    @room_image.destroy
    render json: { message: "Image removed" }
  end
end
