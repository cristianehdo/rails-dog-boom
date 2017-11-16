class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
    authorize(@booking)
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service = Service.find(params[:service_id])

    if @booking.save
      redirect_to service_booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to service_booking_path(@booking)
    else
      render :edit
    end
  end

  def search
    # @bookings = Booking.where(category: params[:category])
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :category, :postcode)
  end
end
