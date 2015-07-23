class DetailGuidesController < ApplicationController
  before_action :set_detail_guide, only: [:show, :edit, :update, :destroy]

  # GET /detail_guides
  # GET /detail_guides.json
  def index
    @detail_guides = DetailGuide.all
  end

  # GET /detail_guides/1
  # GET /detail_guides/1.json
  def show
  end

  # GET /detail_guides/new
  def new
    @detail_guide = DetailGuide.new
  end

  # GET /detail_guides/1/edit
  def edit
  end

  # POST /detail_guides
  # POST /detail_guides.json
  def create
    @detail_guide = DetailGuide.new(detail_guide_params)

    respond_to do |format|
      if @detail_guide.save
        format.html { redirect_to @detail_guide, notice: 'Detail guide was successfully created.' }
        format.json { render :show, status: :created, location: @detail_guide }
      else
        format.html { render :new }
        format.json { render json: @detail_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_guides/1
  # PATCH/PUT /detail_guides/1.json
  def update
    respond_to do |format|
      if @detail_guide.update(detail_guide_params)
        format.html { redirect_to @detail_guide, notice: 'Detail guide was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_guide }
      else
        format.html { render :edit }
        format.json { render json: @detail_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_guides/1
  # DELETE /detail_guides/1.json
  def destroy
    @detail_guide.destroy
    respond_to do |format|
      format.html { redirect_to detail_guides_url, notice: 'Detail guide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_guide
      @detail_guide = DetailGuide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_guide_params
      params.require(:detail_guide).permit(:guide_id, :product_id, :unitprice, :quantity, :subtotal, :note)
    end
end
