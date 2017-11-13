class BookingsController < ApplicationController

  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end


  def search
    # @bookings = Booking.where(category: params[])
  end

  def booking_params
    params.require(:booking).permit(:date, :category)
  end
end
