class GrapesController < ApplicationController
  before_action :set_grape, only: %i[ show edit update destroy ]

  # GET /grapes or /grapes.json
  def index
    @grapes = Grape.all
  end

  # GET /grapes/1 or /grapes/1.json
  def show
  end

  # GET /grapes/new
  def new
    @grape = Grape.new
  end

  # GET /grapes/1/edit
  def edit
  end

  # POST /grapes or /grapes.json
  def create
    @grape = Grape.new(grape_params)

    respond_to do |format|
      if @grape.save
        format.html { redirect_to @grape, notice: "Grape was successfully created." }
        format.json { render :show, status: :created, location: @grape }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grapes/1 or /grapes/1.json
  def update
    respond_to do |format|
      if @grape.update(grape_params)
        format.html { redirect_to @grape, notice: "Grape was successfully updated." }
        format.json { render :show, status: :ok, location: @grape }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grapes/1 or /grapes/1.json
  def destroy
    @grape.destroy
    respond_to do |format|
      format.html { redirect_to grapes_url, notice: "Grape was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grape
      @grape = Grape.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grape_params
      params.fetch(:grape, {})
    end
end
