class ListingsController < ApplicationController
  # before_action :authorize

  def index
    listings = Listing.includes(:host, :amenity)
    render json: listings.map(&:json_with_associations)
  end

  def show
    listing = Listing.find_by(id: params[:id])

    if listing
      render json: listing.json_with_associations
    else
      render json: []
    end
  end

  def create
    if !logged_in?
      render json: {error: "Please Login", message: "Login or Create an Account"}, status: 403
    else
      listing = Listing.new(listing_params)
      listing.host = current_user
      listing.amenity = Amenity.find_or_create_by(id: params[:listing][:amenity]) do |amenity|
        amenity.id = params[:listing][:amenity]
      end

      if listing.save
        render json: listing.json_with_associations
      else
        p listing.errors.full_messages
        render json: {errors: listing.errors.full_messages}, status: 422
      end
    end
  end

  def update
    listing = Listing.find_by(id: params[:id])

    if listing.update(listing_params)
      render json: listing.json_with_associations
    else
      render json: {errors: listing.errors.full_messages}, status: 422
    end
  end

  def destroy
    listing = Listing.find_by(id: params[:id])
    listing.destroy
    render json: {message: "Listing destroyed"}
  end

  private

  def listing_params
    params.require(:listing).permit(:host_id, :amenity_id, :handicap_accessible, :require_medical_attention, :access_to_schools, :property_type, :listing_type, :number_of_guests, :number_of_bedrooms, :number_of_beds, :number_of_bathrooms, :private, :street_address, :city, :state, :country)
  end
end
