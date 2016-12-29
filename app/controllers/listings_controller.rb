class ListingsController < ApplicationController
   add_breadcrumb "Home", :root_path
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all
     add_breadcrumb "Listings", :listings_path
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    add_breadcrumb "Listings", :listings_path
    add_breadcrumb "Current Listing", :listing_path
  end

  # GET /listings/new
  def new
    @listing = Listing.new
    add_breadcrumb "Listings", :listings_path
    add_breadcrumb "Create New Listing", :new_listing_path
  end

  # GET /listings/1/edit
  def edit
    add_breadcrumb "Listings", :listings_path
    add_breadcrumb "Current Listing", :listing_path
    add_breadcrumb "Edit Current Listing", :edit_listing_path
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_path, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find_by(address: params[:address])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:address, :price)
    end
end
