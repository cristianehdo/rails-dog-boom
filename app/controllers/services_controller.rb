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
    if params[:category] && params[:postcode]
      postcode = params[:postcode]
      query = "category = '#{params[:category]}'"
    elsif params[:category].nil?
      postcode = params[:postcode]
      query = "category = 'walking' OR (category = 'brooming') OR (category = 'sitting')"
    else
      postcode = "WC2N 5DU" # london postcode
      query = "category = '#{params[:category]}'"
    end
    @services = Service.near(postcode, 7).where(query)
    authorize(@services)
     @hash = Gmaps4rails.build_markers(@services) do |service, marker|
      marker.lat service.latitude
      marker.lng service.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def seach_by_category
    @services = Service.where(category: params[:category])
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :category, :description, :postcode, :cost)
  end
end
