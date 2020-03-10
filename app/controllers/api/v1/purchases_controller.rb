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
    params.require(:purchase).permit(:amount, :shipping, :email, :firstname, :lastname, :address, :address2, :itemid, :brand1, :title1, :quantity1, :selectedoption1, :price1, :brand2, :title2, :quantity2, :selectedoption2, :price2, :brand3, :title3, :quantity3, :selectedoption3, :price3, :brand4, :title4, :quantity4, :selectedoption4, :price4, :brand5, :title5, :quantity5, :selectedoption5, :price5, :brand6, :title6, :quantity6, :selectedoption6, :price6, :brand7, :title7, :quantity7, :selectedoption7, :price7, :brand8, :title8, :quantity8, :selectedoption8, :price8, :brand9, :title9, :quantity9, :selectedoption9, :price9, :brand10, :title10, :quantity10, :selectedoption10, :price10, :brand11, :title11, :quantity11, :selectedoption11, :price11, :brand12, :title12, :quantity12, :selectedoption12, :price12, :brand13, :title13, :quantity13, :selectedoption13, :price13, :brand14, :title14, :quantity14, :selectedoption14, :price14, :brand15, :title15, :quantity15, :selectedoption15, :price15, :brand16, :title16, :quantity16, :selectedoption16, :price16, :brand17, :title17, :quantity17, :selectedoption17, :price17, :brand18, :title18, :quantity18, :selectedoption18, :price18, :brand19, :title19, :quantity19, :selectedoption19, :price19, :brand20, :title20, :quantity20, :selectedoption20, :price20, :brand21, :title21, :quantity21, :selectedoption21, :price21, :brand22, :title22, :quantity22, :selectedoption22, :price22, :brand23, :title23, :quantity23, :selectedoption23, :price23, :brand24, :title24, :quantity24, :selectedoption24, :price24, :brand25, :title25, :quantity25, :selectedoption25, :price25, :brand26, :title26, :quantity26, :selectedoption26, :price26, :brand27, :title27, :quantity27, :selectedoption27, :price27, :brand28, :title28, :quantity28, :selectedoption28, :price28, :brand29, :title29, :quantity29, :selectedoption29, :price29, :brand30, :title30, :quantity30, :selectedoption30, :price30)
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
