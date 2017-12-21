class AmenitiesController < ApplicationController
  # before_action :authorize

  def index
    amenities = Amenity.includes(:listings, :hosts, :requests, :refugees)
    render json: amenities.map {|amenity| amenity.json_with_associations}
  end

  def show 
    amenity = Amenity.includes(:listings, :hosts, :requests, :refugees)
    render json: amenity.json_with_associations
  end

  def create
    amenity = Amenity.new(amenity_params)

    if amenity
      render json: amenity
    else
      render json: {errors: amenity.errors.full_messages}, status: 422
    end
  end

  def update
    amenity = Amenity.find_by(id: params[:id])

    if amenity.update(amenity_params)
      render json: amenity
    else
      render json: {errors: amenity.errors.full_messages}, status: 422
    end
  end

  def destroy
    amenity = Amenity.find_by(id: params[:id])
    amenity.destroy
    render json: {message: "Amenity destroyed"}
  end

  private

  def amenity_params
    params.require(:amentiy).permit(:heat, :air_conditioning, :washer, :dryer, :closets, :drawers, :wifi, :computer, :phone, :tv, :bikes, :transportation, :pets_allowed, :baby_friendly, :toddler_friendly, :child_friendly, :teen_friendly, :elderly_friendly)
  end
end
