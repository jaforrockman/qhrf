class AyatsController < ApplicationController
  before_action :set_ayat, only: [:show, :edit, :update, :destroy]

  # GET /ayats
  # GET /ayats.json
  def index
    @ayats = Ayat.all.order("ayat_number ASC")
    
  end

  # GET /ayats/1
  # GET /ayats/1.json
  def show
  end

  # GET /ayats/new
  def new
    @ayat = Ayat.new
  end

  # GET /ayats/1/edit
  def edit
  end

  # POST /ayats
  # POST /ayats.json
  def create
    @ayat = Ayat.new(ayat_params)

    respond_to do |format|
      if @ayat.save
        format.html { redirect_to @ayat, notice: 'Ayat was successfully created.' }
        format.json { render :show, status: :created, location: @ayat }
      else
        format.html { render :new }
        format.json { render json: @ayat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ayats/1
  # PATCH/PUT /ayats/1.json
  def update
    respond_to do |format|
      if @ayat.update(ayat_params)
        format.html { redirect_to @ayat, notice: 'Ayat was successfully updated.' }
        format.json { render :show, status: :ok, location: @ayat }
      else
        format.html { render :edit }
        format.json { render json: @ayat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ayats/1
  # DELETE /ayats/1.json
  def destroy
    @ayat.destroy
    respond_to do |format|
      format.html { redirect_to ayats_url, notice: 'Ayat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ayat
      @ayat = Ayat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ayat_params
          
      params.require(:ayat).permit(:book_id, :surah_id, :ayat_number, :ayat_text)
   
    end
end
