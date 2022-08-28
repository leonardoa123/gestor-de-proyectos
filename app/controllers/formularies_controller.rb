class FormulariesController < ApplicationController
  before_action :set_formulary, only: %i[ show edit update destroy ]

  # GET /formularies or /formularies.json
  def index
    @formularies = Formulary.all
  end

  # GET /formularies/1 or /formularies/1.json
  def show
  end

  # GET /formularies/new
  def new
    @formulary = Formulary.new
  end

  # GET /formularies/1/edit
  def edit
  end

  # POST /formularies or /formularies.json
  def create
    @formulary = Formulary.new(formulary_params)

    respond_to do |format|
      if @formulary.save
        format.html { redirect_to formulary_url(@formulary), notice: "Formulary was successfully created." }
        format.json { render :show, status: :created, location: @formulary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @formulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formularies/1 or /formularies/1.json
  def update
    respond_to do |format|
      if @formulary.update(formulary_params)
        format.html { redirect_to formulary_url(@formulary), notice: "Formulary was successfully updated." }
        format.json { render :show, status: :ok, location: @formulary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @formulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularies/1 or /formularies/1.json
  def destroy
    @formulary.destroy

    respond_to do |format|
      format.html { redirect_to formularies_url, notice: "Formulary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulary
      @formulary = Formulary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formulary_params
      params.require(:formulary).permit(:name, :description, :date_begin, :date_end, :condition)
    end
end
