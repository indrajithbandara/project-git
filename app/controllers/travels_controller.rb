class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]


  def index
    if params[:tcategory].blank?
   @travels = Travel.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
   else
        @tcategory_id = Tcategory.find_by(name: params[:tcategory]).id
        @travels = Travel.where(tcategory_id: @tcategory_id).order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
   end
    @settings = Setting.all.order("created_at ASC").limit(1)
  end


  def show
    @settings = Setting.all.order("created_at ASC").limit(1)
  end


  def new
    @travel = Travel.new
  end


  def edit
  end

  def create
    @travel = Travel.new(travel_params)

    respond_to do |format|
      if @travel.save
        format.html { redirect_to @travel, notice: 'Travel was successfully created.' }
        format.json { render :show, status: :created, location: @travel }
      else
        format.html { render :new }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @travel.update(travel_params)
        format.html { redirect_to @travel, notice: 'Travel was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel }
      else
        format.html { render :edit }
        format.json { render json: @travel.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @travel.destroy
    respond_to do |format|
      format.html { redirect_to travels_url, notice: 'Travel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_params
      params.require(:travel).permit(:title, :description, :content, :image1, :image2, :image3, :image4, :slug, :tcategory_id, :title_slide, :description_slide, :content_slide, :title_slide2, :description_slide2, :content_slide2, :title_slide3, :description_slide3, :content_slide3, :title_slide4, :description_slide4, :content_slide4)
    end
end
