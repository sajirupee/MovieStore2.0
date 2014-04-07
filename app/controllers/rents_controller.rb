class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]

  # GET /rents
  # GET /rents.json
  def index
    @rents = Rent.search(params[:search])
  end

  # GET /rents/1
  # GET /rents/1.json
  def show
  end

  # GET /rents/new
  def new
    @rent = Rent.new
  end

  # GET /rents/1/edit
  def edit
  end

  # POST /rents
  # POST /rents.json
  def create
    @rent = Rent.new(rent_params)

    respond_to do |format|
      if @rent.save
        format.html { redirect_to @rent, notice: 'Rent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rent }
      else
        format.html { render action: 'new' }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rents/1
  # PATCH/PUT /rents/1.json
  def update
    respond_to do |format|
      if @rent.update(rent_params)
        format.html { redirect_to @rent, notice: 'Rent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rents/1
  # DELETE /rents/1.json
  def destroy
    @rent.destroy
    respond_to do |format|
      format.html { redirect_to rents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_params
      params.require(:rent).permit(:movie_id, :member_id, :borrowDate)
    end
end
