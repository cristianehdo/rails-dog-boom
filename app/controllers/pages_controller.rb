class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # def dashboard

  # end

  # def dashboard_params
  #   params.require(:users).permit(:name)
  # end
end
