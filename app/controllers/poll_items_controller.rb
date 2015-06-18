class PollItemsController < ApplicationController
  before_action :set_poll_item, only: [:show, :edit, :update, :destroy]
  before_action :set_poll

  # GET /poll_items

  # GET /poll_items/1
  def show
  end

  # GET /poll_items/new
  def new
    @poll_item = PollItem.new
  end

  # GET /poll_items/1/edit
  def edit
  end

  # POST /poll_items
  def create
    @poll_item = PollItem.new(poll_item_params)

    if @poll_item.save
      redirect_to edit_poll_path(@poll), notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /poll_items/1
  def update
    if @poll_item.update(poll_item_params)
      redirect_to edit_poll_path(@poll), notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /poll_items/1
  def destroy
    @poll_item.destroy
    redirect_to edit_poll_path(@poll), notice: 'Item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_item
      @poll_item = PollItem.find(params[:id])
    end

    def set_poll
      @poll = @poll_item ? @poll_item.poll : Poll.find(params[:poll_id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def poll_item_params
      params.require(:poll_item).permit(:answer, :poll_id)
    end
end
