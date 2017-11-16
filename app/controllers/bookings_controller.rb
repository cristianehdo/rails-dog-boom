class BookingsController < ApplicationController
  before_action

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    booking.save
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update

  end

  def search
    # @bookings = Booking.where(category: params[:category])
  end

  def booking_params
    params.require(:booking).permit(:date, :category, :location)
  end
end
