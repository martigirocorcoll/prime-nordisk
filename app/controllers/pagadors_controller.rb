class PagadorsController < ApplicationController
  before_action :set_pagador, only: %i[ show edit update destroy ]

  # GET /pagadors or /pagadors.json
  def index
    @pagadors = Pagador.all
  end

  # GET /pagadors/1 or /pagadors/1.json
  def show
  end

  # GET /pagadors/new
  def new
    @pagador = Pagador.new
  end

  # GET /pagadors/1/edit
  def edit
  end

  # POST /pagadors or /pagadors.json
  def create
    @pagador = Pagador.new(pagador_params)

    respond_to do |format|
      if @pagador.save
        format.html { redirect_to pagador_url(@pagador), notice: "Pagador was successfully created." }
        format.json { render :show, status: :created, location: @pagador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pagador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagadors/1 or /pagadors/1.json
  def update
    respond_to do |format|
      if @pagador.update(pagador_params)
        format.html { redirect_to pagador_url(@pagador), notice: "Pagador was successfully updated." }
        format.json { render :show, status: :ok, location: @pagador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pagador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagadors/1 or /pagadors/1.json
  def destroy
    @pagador.destroy

    respond_to do |format|
      format.html { redirect_to pagadors_url, notice: "Pagador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagador
      @pagador = Pagador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pagador_params
      params.require(:pagador).permit(:nombre)
    end
end
