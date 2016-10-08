class EcategoriesController < ApplicationController
  before_action :set_ecategory, only: [:show, :edit, :update, :destroy]

  def index
    @ecategories = Ecategory.all
  end


  def show
  end

  def new
    @ecategory = Ecategory.new
  end

  def edit
  end


  def create
    @ecategory = Ecategory.new(ecategory_params)

    respond_to do |format|
      if @ecategory.save
        format.html { redirect_to @ecategory, notice: 'Ecategory was successfully created.' }
        format.json { render :show, status: :created, location: @ecategory }
      else
        format.html { render :new }
        format.json { render json: @ecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ecategory.update(ecategory_params)
        format.html { redirect_to @ecategory, notice: 'Ecategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecategory }
      else
        format.html { render :edit }
        format.json { render json: @ecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ecategory.destroy
    respond_to do |format|
      format.html { redirect_to ecategories_url, notice: 'Ecategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecategory
      @ecategory = Ecategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecategory_params
      params.require(:ecategory).permit(:name)
    end
end
