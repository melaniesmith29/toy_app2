class MicroposrtsController < ApplicationController
  before_action :set_microposrt, only: [:show, :edit, :update, :destroy]

  # GET /microposrts
  # GET /microposrts.json
  def index
    @microposrts = Microposrt.all
  end

  # GET /microposrts/1
  # GET /microposrts/1.json
  def show
  end

  # GET /microposrts/new
  def new
    @microposrt = Microposrt.new
  end

  # GET /microposrts/1/edit
  def edit
  end

  # POST /microposrts
  # POST /microposrts.json
  def create
    @microposrt = Microposrt.new(microposrt_params)

    respond_to do |format|
      if @microposrt.save
        format.html { redirect_to @microposrt, notice: 'Microposrt was successfully created.' }
        format.json { render :show, status: :created, location: @microposrt }
      else
        format.html { render :new }
        format.json { render json: @microposrt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposrts/1
  # PATCH/PUT /microposrts/1.json
  def update
    respond_to do |format|
      if @microposrt.update(microposrt_params)
        format.html { redirect_to @microposrt, notice: 'Microposrt was successfully updated.' }
        format.json { render :show, status: :ok, location: @microposrt }
      else
        format.html { render :edit }
        format.json { render json: @microposrt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposrts/1
  # DELETE /microposrts/1.json
  def destroy
    @microposrt.destroy
    respond_to do |format|
      format.html { redirect_to microposrts_url, notice: 'Microposrt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microposrt
      @microposrt = Microposrt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microposrt_params
      params.require(:microposrt).permit(:content, :user_id)
    end
end
