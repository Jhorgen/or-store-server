class Api::V1::PurchasesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @purchases = Purchase.order("created_at DESC")
    render json: @purchases
  end

  def create
    @purchase = Purchase.create(purchase_params)
    if @purchase.save
      ApplicationMailer.message_customer(@purchase).deliver_now
      ApplicationMailer.message_store(@purchase).deliver_now

    end
    render json: @purchase
  end

  def purchase_params
    params.require(:purchase).permit(:amount, :email, :firstname, :lastname, :address, :itemid, :brand1, :title1, :quantity1, :brand2, :title2, :quantity2, :brand3, :title3, :quantity3, :brand4, :title4, :quantity4, :brand5, :title5, :quantity5, :brand6, :title6, :quantity6, :brand7, :title7, :quantity7, :brand8, :title8, :quantity8, :brand9, :title9, :quantity9, :brand10, :title10, :quantity10, :brand11, :title11, :quantity11, :brand12, :title12, :quantity12, :brand13, :title13, :quantity13, :brand14, :title14, :quantity14, :brand15, :title15, :quantity15, :brand16, :title16, :quantity16, :brand17, :title17, :quantity17, :brand18, :title18, :quantity18, :brand19, :title19, :quantity19, :brand20, :title20, :quantity20, :brand21, :title21, :quantity21, :brand22, :title22, :quantity22, :brand23, :title23, :quantity23, :brand24, :title24, :quantity24, :brand25, :title25, :quantity25, :brand26, :title26, :quantity26, :brand27, :title27, :quantity27, :brand28, :title28, :quantity28, :brand29, :title29, :quantity29, :brand30, :title30, :quantity30)
  end

  def update
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
