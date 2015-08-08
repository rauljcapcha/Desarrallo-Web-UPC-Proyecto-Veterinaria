class AtentionsController < ApplicationController
  before_action :set_atention, only: [:show, :edit, :update, :destroy]

  # GET /atentions
  # GET /atentions.json
  def index
  	@atentions = Atention.all.order('date asc')
  	@date = params[:month] ? Date.parse(params[:month]) : Date.today
  	@atention = Atention.new
  end

  # GET /atentions/1
  # GET /atentions/1.json
  def show
  end

  # GET /atentions/new
  def new
    @atention = Atention.new
    if params[:format].nil?
      @veterinary_appointment = VeterinaryAppointment.find(1)
    else
      @veterinary_appointment = VeterinaryAppointment.find(params[:format])
    end
    @atention.veterinary_appointment = @veterinary_appointment
  end

  # GET /atentions/1/edit
  def edit
  end

  # POST /atentions
  # POST /atentions.json
  def create
    @atention = Atention.new(atention_params)

    respond_to do |format|
      if @atention.save
        format.html { redirect_to @atention, notice: 'Atention was successfully created.' }
        format.json { render :show, status: :created, location: @atention }
        format.js
      else
        format.html { render :new }
        format.json { render json: @atention.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /atentions/1
  # PATCH/PUT /atentions/1.json
  def update
    respond_to do |format|
      if @atention.update(atention_params)
        format.html { redirect_to @atention, notice: 'Atention was successfully updated.' }
        format.json { render :show, status: :ok, location: @atention }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @atention.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /atentions/1
  # DELETE /atentions/1.json
  def destroy
    @atention.destroy
    respond_to do |format|
      format.html { redirect_to atentions_url, notice: 'Atention was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atention
      @atention = Atention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atention_params
      params.require(:atention).permit(:veterinary_appointment_id, :customer_id, :pet_id, :date)
    end
end
