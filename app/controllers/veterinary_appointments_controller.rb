class VeterinaryAppointmentsController < ApplicationController
  before_action :set_veterinary_appointment, only: [:show, :edit, :update, :destroy]

  # GET /veterinary_appointments
  # GET /veterinary_appointments.json
  def index
  	@veterinary_appointments = VeterinaryAppointment.where("status = 0 ") 
  	@date = params[:month] ? Date.parse(params[:month]) : Date.today
  	@veterinary_appointment = VeterinaryAppointment.new
  end

  # GET /veterinary_appointments/1
  # GET /veterinary_appointments/1.json
  def show
    @atention = Atention.new
    @atention.veterinary_appointment = @veterinary_appointment
  end

  # GET /veterinary_appointments/new
  def new
    @veterinary_appointment = VeterinaryAppointment.new
  end

  # GET /veterinary_appointments/1/edit
  def edit
  end

  # POST /veterinary_appointments
  # POST /veterinary_appointments.json
  def create
    @veterinary_appointment = VeterinaryAppointment.new(veterinary_appointment_params)

    respond_to do |format|
      if @veterinary_appointment.save
        format.html { redirect_to @veterinary_appointment, notice: 'Veterinary appointment was successfully created.' }
        format.json { render :show, status: :created, location: @veterinary_appointment }
        format.js
      else
        format.html { render :new }
        format.json { render json: @veterinary_appointment.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /veterinary_appointments/1
  # PATCH/PUT /veterinary_appointments/1.json
  def update
    respond_to do |format|
      if @veterinary_appointment.update(veterinary_appointment_params)
        format.html { redirect_to @veterinary_appointment, notice: 'Veterinary appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @veterinary_appointment }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @veterinary_appointment.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /veterinary_appointments/1
  # DELETE /veterinary_appointments/1.json
  def destroy
    @veterinary_appointment.destroy
    respond_to do |format|
      format.html { redirect_to veterinary_appointments_url, notice: 'Veterinary appointment was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veterinary_appointment
      @veterinary_appointment = VeterinaryAppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veterinary_appointment_params
      params.require(:veterinary_appointment).permit(:customer_id, :pet_id, :date, :note, :status)
    end
end
