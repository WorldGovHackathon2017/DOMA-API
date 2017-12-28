class RefugeesController < ApplicationController
  # before_action :authorize

  def index
    refugees = Refugee.includes(:requests, :amenities)
    render json: refugees.map(&:json_with_associations)
  end

  def show
    refugee = Refugee.find_by(id: params[:id])

    if refugee
      render json: refugee.json_with_associations
    else
      render json: []
    end
  end

  def create
    refugee = Refugee.new(refugee_params)

    if refugee
      render json: refugee.json_with_associations
    else
      render json: {errors: refugee.errors.full_messages}, status: 422
    end
  end

  def update
    refugee = Refugee.find_by(id: params[:id])

    if refugee.update(refugee_params)
      render json: refugee.json_with_associations
    else
      render json: {errors: refugee.errors.full_messages}, status: 422
    end
  end

  def destroy
    refugee = Refugee.find_by(id: params[:id])
    refugee.destroy
    render json: {message: "Refugee destroyed"}
  end

  def profile
    refugee = current_user

    if refugee 
      render json: refugee.json_with_associations
    else
      render json: {}
    end
  end

  private

  def refugee_params
    params.require(:refugee).permit(:first_name, :last_name, :username, :email, :phone_number, :city, :state, :country)
  end
end
