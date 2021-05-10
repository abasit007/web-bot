class JsSriptsController < ApplicationController
  before_action :set_js_sript, only: %i[ show edit update destroy ]

  # GET /js_sripts or /js_sripts.json
  def index
    @js_sripts = JsSript.all
  end

  # GET /js_sripts/1 or /js_sripts/1.json
  def show
  end

  # GET /js_sripts/new
  def new
    @js_sript = JsSript.new
  end

  # GET /js_sripts/1/edit
  def edit
  end

  # POST /js_sripts or /js_sripts.json
  def create
    @js_sript = JsSript.new(js_sript_params)

    respond_to do |format|
      if @js_sript.save
        format.html { redirect_to @js_sript, notice: "Js sript was successfully created." }
        format.json { render :show, status: :created, location: @js_sript }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @js_sript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /js_sripts/1 or /js_sripts/1.json
  def update
    respond_to do |format|
      if @js_sript.update(js_sript_params)
        format.html { redirect_to @js_sript, notice: "Js sript was successfully updated." }
        format.json { render :show, status: :ok, location: @js_sript }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @js_sript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /js_sripts/1 or /js_sripts/1.json
  def destroy
    @js_sript.destroy
    respond_to do |format|
      format.html { redirect_to js_sripts_url, notice: "Js sript was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_js_sript
      @js_sript = JsSript.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def js_sript_params
      params.require(:js_sript).permit(:chatscript)
    end
end
