class MyfirstappsController < ApplicationController
  before_action :set_myfirstapp, only: [:show, :edit, :update, :destroy]

  # GET /myfirstapps
  # GET /myfirstapps.json
  def index
    @myfirstapps = Myfirstapp.all
  end

  # GET /myfirstapps/1
  # GET /myfirstapps/1.json
  def show
  end

  # GET /myfirstapps/new
  def new
    @myfirstapp = Myfirstapp.new
  end

  # GET /myfirstapps/1/edit
  def edit
  end

  # POST /myfirstapps
  # POST /myfirstapps.json
  def create
    @myfirstapp = Myfirstapp.new(myfirstapp_params)

    respond_to do |format|
      if @myfirstapp.save
        format.html { redirect_to @myfirstapp, notice: 'Myfirstapp was successfully created.' }
        format.json { render :show, status: :created, location: @myfirstapp }
      else
        format.html { render :new }
        format.json { render json: @myfirstapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myfirstapps/1
  # PATCH/PUT /myfirstapps/1.json
  def update
    respond_to do |format|
      if @myfirstapp.update(myfirstapp_params)
        format.html { redirect_to @myfirstapp, notice: 'Myfirstapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @myfirstapp }
      else
        format.html { render :edit }
        format.json { render json: @myfirstapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myfirstapps/1
  # DELETE /myfirstapps/1.json
  def destroy
    @myfirstapp.destroy
    respond_to do |format|
      format.html { redirect_to myfirstapps_url, notice: 'Myfirstapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myfirstapp
      @myfirstapp = Myfirstapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myfirstapp_params
      params.fetch(:myfirstapp, {})
    end
end
