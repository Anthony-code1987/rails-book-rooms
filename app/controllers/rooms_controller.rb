class RoomsController < ApplicationController
  before_action :set_room, only: [:show]

  def index
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = @hotel.rooms
  end

  def show
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.find(params[:id])
    @booking = Booking.new
    @disabled_dates = @room.bookings.flat_map { |dates| (dates.starts_at.to_date..dates.ends_at.to_date).map { |date| date.strftime('%Y-%m-%d') }}
  end

  private

  def room_params
    params.require(:room).permit(:price_per_night, :capacity)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
