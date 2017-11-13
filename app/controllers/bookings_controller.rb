class BookingsController < ApplicationController

  def index

  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    booking.save
  end

  def edit

  end

  def update

  end


  def search
    # @bookings = Booking.where(category: params[:category])
  end

  def booking_params
    params.require(:booking).permit(:date, :category)
  end
end
