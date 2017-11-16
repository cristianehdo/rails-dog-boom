class ServicesController < ApplicationController
  before_action :find_service, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index, :show, :search ]

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
    if @service.save
      redirect_to service_path(@service)
    else
      render "new"
    end
  end

  def show
    @service = find_service
    authorize(@service)
  end

  def edit
    @service = find_service
    authorize(@service)
  end

  def update
    authorize(@service)
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render "edit"
    end
  end

  def destroy
     @service.destroy
     authorize(@service)
     redirect_to services_path(@service)
  end

  def search
    @services = Service.near(params[:postcode], 5)
    authorize(@services)
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :category, :description)
  end
end
