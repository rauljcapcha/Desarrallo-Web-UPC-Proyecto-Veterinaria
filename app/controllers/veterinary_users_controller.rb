class VeterinaryUsersController < ApplicationController
  before_action :set_veterinary_user, only: [:show, :edit, :update, :destroy]

  # GET /veterinary_users
  # GET /veterinary_users.json
  def index
    @veterinary_users = VeterinaryUser.all
  end

  # GET /veterinary_users/1
  # GET /veterinary_users/1.json
  def show
  end

  # GET /veterinary_users/new
  def new
    @veterinary_user = VeterinaryUser.new
  end

  # GET /veterinary_users/1/edit
  def edit
  end

  # POST /veterinary_users
  # POST /veterinary_users.json
  def create
    @veterinary_user = VeterinaryUser.new(veterinary_user_params)

    respond_to do |format|
      if @veterinary_user.save
        format.html { redirect_to @veterinary_user, notice: 'Veterinary user was successfully created.' }
        format.json { render :show, status: :created, location: @veterinary_user }
      else
        format.html { render :new }
        format.json { render json: @veterinary_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veterinary_users/1
  # PATCH/PUT /veterinary_users/1.json
  def update
    respond_to do |format|
      if @veterinary_user.update(veterinary_user_params)
        format.html { redirect_to @veterinary_user, notice: 'Veterinary user was successfully updated.' }
        format.json { render :show, status: :ok, location: @veterinary_user }
      else
        format.html { render :edit }
        format.json { render json: @veterinary_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veterinary_users/1
  # DELETE /veterinary_users/1.json
  def destroy
    @veterinary_user.destroy
    respond_to do |format|
      format.html { redirect_to veterinary_users_url, notice: 'Veterinary user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veterinary_user
      @veterinary_user = VeterinaryUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veterinary_user_params
      params.require(:veterinary_user).permit(:nameuser, :passworduser)
    end
end
