class BookingsController < ApplicationController
  before_action :set_hotel_and_room, only: [:create]
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.room = @room
    @booking.user = current_user
    if @booking.save
      redirect_to hotel_room_path(@hotel, @room), notice: "Booking was successfully created."
    else
      render "rooms/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end

  def set_hotel_and_room
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.find(params[:room_id])
  end
end
