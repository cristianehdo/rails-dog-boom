class ServicesController < ApplicationController
  before_action :find_service, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @services = policy_scope(Service)
  end

  def new
    @service = Service.new
    authorize(@service)
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    authorize(@service)
    @service.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy

  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :category, :description)
  end
end
