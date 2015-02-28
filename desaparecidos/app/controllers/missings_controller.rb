class MissingsController < ApplicationController
  before_action :set_missing, only: [:show, :edit, :update, :destroy]

  # GET /missings
  # GET /missings.json
  def index
    @missings = Missing.order(:name).page(params[:page]).per(9)
  end

  # GET /missings/1
  # GET /missings/1.json
  def show
  end

  # GET /missings/new
  def new
    @missing = Missing.new
  end

  # GET /missings/1/edit
  def edit
  end

  # POST /missings
  # POST /missings.json
  def create
    @missing = Missing.new(missing_params)

    respond_to do |format|
      if @missing.save
        format.html { redirect_to @missing, notice: 'Missing was successfully created.' }
        format.json { render :show, status: :created, location: @missing }
      else
        format.html { render :new }
        format.json { render json: @missing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /missings/1
  # PATCH/PUT /missings/1.json
  def update
    respond_to do |format|
      if @missing.update(missing_params)
        format.html { redirect_to @missing, notice: 'Missing was successfully updated.' }
        format.json { render :show, status: :ok, location: @missing }
      else
        format.html { render :edit }
        format.json { render json: @missing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missings/1
  # DELETE /missings/1.json
  def destroy
    @missing.destroy
    respond_to do |format|
      format.html { redirect_to missings_url, notice: 'Missing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missing
      @missing = Missing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missing_params
      params.require(:missing).permit(:name, :since, :url_audio, :detail, :status, :picture, :city, :state)
    end
end
