class HostsController < ApplicationController
  # before_action :authorize

  def index
    hosts = Host.includes(:listings, :amenities)
    render json: hosts.map(&:json_with_associations)
  end

  def show
    host = Host.find_by(id: params[:id])

    if host
      render json: host.json_with_associations
    else
      render json: []
    end
  end

  def create
    host = Host.new(host_params)

    if host
      render json: host.json_with_associations
    else
      render json: {errors: host.errors.full_messages}, status: 422
    end
  end

  def update
    host = Host.find_by(id: params[:id])

    if host.update(host_params)
      render json: host.json_with_associations
    else
      render json: {errors: host.errors.full_messages}, status: 422
    end
  end

  def destroy
    host = Host.find_by(id: params[:id])
    host.destroy
    render json: {message: "Host destroyed"}
  end

  def profile
    host = current_user

    if host 
      render json: host.json_with_associations
    else
      render json: {}
    end
  end

  private

  def host_params
    params.require(:host).permit(:first_name, :last_name, :username, :email, :phone_number, :city, :state, :country)
  end
end
