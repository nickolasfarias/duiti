class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create]
  def index
    @services = Service.where(worker_id: current_worker.id)
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.worker = current_worker
    @service.category_id = params[:service][:category_id].to_i
    if @service.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def service_params
    params.require(:service).permit(:nome, :category, :preço)
  end
end
