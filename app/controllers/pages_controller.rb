class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
   current_user
  end
end
