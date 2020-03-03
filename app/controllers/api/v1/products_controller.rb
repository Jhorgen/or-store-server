class Api::V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @products = Product.order("created_at DESC")
    .find_by_category(params[:category])
    .find_by_brand(params[:brand])
    .find_by_title(params[:title])
    .find_by_description(params[:description])
    render json: @products
  end

  def create
    @product = Product.create(product_params)
    render json: @product
  end

  def product_params
    params.require(:product).permit(:category, :brand, :description, :option1, :option2, :option3, :option4, :option5, :option6, :option7, :option8, :option9, :option10, :option1quantity, :option2quantity, :option3quantity, :option4quantity, :option5quantity, :option6quantity, :option7quantity, :option8quantity, :option9quantity, :option10quantity, :selectedoption, :selectedOptionIndex, :price, :saleprice, :image1, :image2, :image3, :image4, :image5, :image6, :image7, :image8,:image9, :image10, :rating, :checkoutquantity, :title, :option1price, :option2price, :option3price, :option4price, :option5price, :option6price, :option7price, :option8price, :option9price, :option10price, :spec1, :spec2, :spec3, :spec4, :spec5, :spec6, :spec7, :spec8, :spec9, :spec10)
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      head :no_content, status: :ok
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end
end
