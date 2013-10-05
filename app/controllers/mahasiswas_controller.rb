class MahasiswasController < ApplicationController
  before_action :set_mahasiswa, only: [:show, :edit, :update, :destroy]

  # GET /mahasiswas
  # GET /mahasiswas.json
  def index
    @mahasiswas = Mahasiswa.all
  end

  # GET /mahasiswas/1
  # GET /mahasiswas/1.json
  def show
  end

  # GET /mahasiswas/new
  def new
    @mahasiswa = Mahasiswa.new
  end

  # GET /mahasiswas/1/edit
  def edit
  end

  # POST /mahasiswas
  # POST /mahasiswas.json
  def create
    @mahasiswa = Mahasiswa.new(mahasiswa_params)

    respond_to do |format|
      if @mahasiswa.save
        format.html { redirect_to @mahasiswa, notice: 'Mahasiswa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mahasiswa }
      else
        format.html { render action: 'new' }
        format.json { render json: @mahasiswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mahasiswas/1
  # PATCH/PUT /mahasiswas/1.json
  def update
    respond_to do |format|
      if @mahasiswa.update(mahasiswa_params)
        format.html { redirect_to @mahasiswa, notice: 'Mahasiswa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mahasiswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mahasiswas/1
  # DELETE /mahasiswas/1.json
  def destroy
    @mahasiswa.destroy
    respond_to do |format|
      format.html { redirect_to mahasiswas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mahasiswa
      @mahasiswa = Mahasiswa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mahasiswa_params
      params.require(:mahasiswa).permit(:nim, :nama, :alamat, :jam_absen)
    end
end
