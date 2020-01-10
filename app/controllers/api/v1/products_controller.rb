class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /products
  def index
    @products = Product.order("created_at DESC")
    .find_by_category(params[:category])
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
    @product = Product.create(product_params)
    render json: @product
  end

  def product_params
    params.require(:product).permit(:category, :brand, :description, :color1, :color2, :color4, :color5, :size1, :size2, :size3, :size4, :size5, :quantity, :price, :saleprice, :image1, :image2, :image3, :image4, :image5, :review, :rating, :review, :rating, :checkoutquantity, :title)
  end

  # PATCH/PUT /products/1
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end
  # DELETE /products/1
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      head :no_content, status: :ok
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end


  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end
  # Only allow a trusted parameter “white list” through.

end
