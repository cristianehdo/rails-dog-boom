class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def bookings

  end

end
