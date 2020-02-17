class HighScore2sController < ApplicationController
  before_action :set_high_score2, only: [:show, :edit, :update, :destroy]

  # GET /high_score2s
  # GET /high_score2s.json
  def index
    @high_score2s = HighScore2.all
  end

  # GET /high_score2s/1
  # GET /high_score2s/1.json
  def show
  end

  # GET /high_score2s/new
  def new
    @high_score2 = HighScore2.new
  end

  # GET /high_score2s/1/edit
  def edit
  end

  # POST /high_score2s
  # POST /high_score2s.json
  def create
    @high_score2 = HighScore2.new(high_score2_params)

    respond_to do |format|
      if @high_score2.save
        format.html { redirect_to @high_score2, notice: 'High score2 was successfully created.' }
        format.json { render :show, status: :created, location: @high_score2 }
      else
        format.html { render :new }
        format.json { render json: @high_score2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /high_score2s/1
  # PATCH/PUT /high_score2s/1.json
  def update
    respond_to do |format|
      if @high_score2.update(high_score2_params)
        format.html { redirect_to @high_score2, notice: 'High score2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @high_score2 }
      else
        format.html { render :edit }
        format.json { render json: @high_score2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /high_score2s/1
  # DELETE /high_score2s/1.json
  def destroy
    @high_score2.destroy
    respond_to do |format|
      format.html { redirect_to high_score2s_url, notice: 'High score2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_score2
      @high_score2 = HighScore2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def high_score2_params
      params.require(:high_score2).permit(:game, :score)
    end
end
