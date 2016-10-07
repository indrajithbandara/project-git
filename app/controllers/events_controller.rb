class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  
  def index
   if params[:ecategory].blank?
   @events = Event.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
   else
        @ecategory_id = Ecategory.find_by(name: params[:ecategory]).id
        @events = Event.where(ecategory_id: @ecategory_id).order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
   end
    @settings = Setting.all.order("created_at ASC").limit(1)
  end


  def show
    @settings = Setting.all.order("created_at ASC").limit(1)
  end

  def new
    @event = Event.new
  end


  def edit
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :content, :slug, :ecategory_id)
    end
end
