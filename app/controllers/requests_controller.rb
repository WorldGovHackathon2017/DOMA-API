class RequestsController < ApplicationController
  # before_action :authorize

  def index
    requests = Request.includes(:refugee, :amenity)
    render json: requests.map(&:json_with_associations)
  end

  def show
    request = Request.find_by(id: params[:id])

    if request
      render json: request.json_with_associations
    else
      render json: []
    end
  end

  def create
    if !logged_in?
      render json: {error: "Please Login", message: "Login or Create an Account"}, status: 403
    else
      request = Request.new(request_params)
      request.refugee = current_user
      request.amenity = Amenity.find_or_create_by(id: params[:request][:amenity]) do |amenity|
        amenity.id = params[:request][:amenity]
      end

      if request.save
        render json: request.json_with_associations
      else
        p request.errors.full_messages
        render json: {errors: request.errors.full_messages}, status: 422
      end
    end
  end

  def update
    request = Request.find_by(id: params[:id])

    if request.update(request_params)
      render json: request.json_with_associations
    else
      render json: {errors: request.errors.full_messages}, status: 422
    end
  end

  def destroy
    request = Request.find_by(id: params[:id])
    request.destroy
    render json: {message: "Request destroyed"}
  end

  private

  def request_params
    params.require(:request).permit(:refugee_id, :amenity_id, :handicap_accessible, :require_medical_attention, :access_to_schools, :number_of_guests, :city, :state, :country)
  end
end
