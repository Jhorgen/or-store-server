class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]
  # GET /products
  def index
    @products = Product.find_by_category(params[:category])
    .find_by_brand(params[:brand])
    .find_by_title(params[:title])
    render json: @products
  end
  # GET /products/1
  def show
   render json: @product
  end
  # POST /products
  def create
   @product = Product.new(product_params)
   if @product.save
    render json: @product, status: :created, location: api_v1_product_url(@product)
   else
    render json: @product.errors, status: :unprocessable_entity
   end
  end
  # PATCH/PUT /products/1
  def update
   if @product.update(product_params)
    render json: @product
   else
    render json: @product.errors, status: :unprocessable_entity
   end
  end
 # DELETE /products/1
  def destroy
   @product.destroy
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
   @product = Product.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.
  def product_params
    params.require(:product).permit(:category, :brand, :description, :color1, :color2, :color4, :color5, :size1, :size2, :size3, :size4, :size5, :quantity, :price, :saleprice, :image1, :image2, :image3, :image4, :image5, :review, :rating)
  end
end
