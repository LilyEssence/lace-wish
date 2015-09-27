class DressWishlistsController < ApplicationController
  before_action :set_dress_wishlist, only: [:show, :edit, :update, :destroy]

  # GET /dress_wishlists
  # GET /dress_wishlists.json
  def index
    @dress_wishlists = DressWishlist.all
  end

  # GET /dress_wishlists/1
  # GET /dress_wishlists/1.json
  def show
  end

  # GET /dress_wishlists/new
  def new
    @dress_wishlist = DressWishlist.new
  end

  # GET /dress_wishlists/1/edit
  def edit
  end

  # POST /dress_wishlists
  # POST /dress_wishlists.json
  def create
    @dress_wishlist = DressWishlist.new(dress_wishlist_params)

    respond_to do |format|
      if @dress_wishlist.save
        format.html { redirect_to @dress_wishlist, notice: 'Dress wishlist was successfully created.' }
        format.json { render :show, status: :created, location: @dress_wishlist }
      else
        format.html { render :new }
        format.json { render json: @dress_wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dress_wishlists/1
  # PATCH/PUT /dress_wishlists/1.json
  def update
    respond_to do |format|
      if @dress_wishlist.update(dress_wishlist_params)
        format.html { redirect_to @dress_wishlist, notice: 'Dress wishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @dress_wishlist }
      else
        format.html { render :edit }
        format.json { render json: @dress_wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dress_wishlists/1
  # DELETE /dress_wishlists/1.json
  def destroy
    @dress_wishlist.destroy
    respond_to do |format|
      format.html { redirect_to dress_wishlists_url, notice: 'Dress wishlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dress_wishlist
      @dress_wishlist = DressWishlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dress_wishlist_params
      params.require(:dress_wishlist).permit(:dress_id, :wishlist_id)
    end
end
