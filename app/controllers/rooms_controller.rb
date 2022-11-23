class RoomsController < ApplicationController
  def index
    @room = Room.all
    render template: "rooms/index"
  end

  def new
    @room = Room.new
    render template: "rooms/new"
  end

  def create
    @room = Room.new(
      user_id: params[:room][:user_id],
      address: params[:room][:address],
      city: params[:room][:city],
      state: params[:room][:state],
      price: params[:room][:price],
      description: params[:room][:description],
      home_type: params[:room][:home_type],
      room_type: params[:room][:room_type],
      total_occupancy: params[:room][:total_occupancy],
      total_bedrooms: params[:room][:total_bedrooms],
      total_bathrooms: params[:room][:total_bathrooms],
    )
    if @room.save
      session[:room_id] = @room.id
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @room = Room.find_by(id: params[:id])
    render template: "rooms/edit"
  end

  def update
    @room = Room.find_by(id: params[:id])
    @room.user_id = params[:room][:user_id]
    @room.address = params[:room][:address]
    @room.city = params[:room][:city]
    @room.state = params[:room][:state]
    @room.price = params[:room][:price]
    @room.description = params[:room][:description]
    @room.home_type = params[:room][:home_type]
    @room.room_type = params[:room][:room_type]
    @room.total_occupancy = params[:room][:total_occupancy]
    @total_bedrooms.name = params[:total_bedrooms][:name]
    @room.total_bathrooms = params[:room][:total_bathrooms]
    
    @room.save
    redirect_to "/rooms"
  end

  def destroy
    session[:room_id] = nil
    redirect_to "/login"
  end
end