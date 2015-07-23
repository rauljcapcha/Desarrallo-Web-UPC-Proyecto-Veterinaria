class DetailVouchersController < ApplicationController
  before_action :set_detail_voucher, only: [:show, :edit, :update, :destroy]

  # GET /detail_vouchers
  # GET /detail_vouchers.json
  def index
    @detail_vouchers = DetailVoucher.all
  end

  # GET /detail_vouchers/1
  # GET /detail_vouchers/1.json
  def show
  end

  # GET /detail_vouchers/new
  def new
    @detail_voucher = DetailVoucher.new
  end

  # GET /detail_vouchers/1/edit
  def edit
  end

  # POST /detail_vouchers
  # POST /detail_vouchers.json
  def create
    @detail_voucher = DetailVoucher.new(detail_voucher_params)

    respond_to do |format|
      if @detail_voucher.save
        format.html { redirect_to @detail_voucher, notice: 'Detail voucher was successfully created.' }
        format.json { render :show, status: :created, location: @detail_voucher }
      else
        format.html { render :new }
        format.json { render json: @detail_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_vouchers/1
  # PATCH/PUT /detail_vouchers/1.json
  def update
    respond_to do |format|
      if @detail_voucher.update(detail_voucher_params)
        format.html { redirect_to @detail_voucher, notice: 'Detail voucher was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_voucher }
      else
        format.html { render :edit }
        format.json { render json: @detail_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_vouchers/1
  # DELETE /detail_vouchers/1.json
  def destroy
    @detail_voucher.destroy
    respond_to do |format|
      format.html { redirect_to detail_vouchers_url, notice: 'Detail voucher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_voucher
      @detail_voucher = DetailVoucher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_voucher_params
      params.require(:detail_voucher).permit(:voucher_id, :service_id, :guide_id, :unitprice, :quantity, :subtotal)
    end
end
