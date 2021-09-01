class TimeslotsController < ApplicationController
  before_action :set_timeslot, only: %i[ show update destroy ]

  # GET /timeslots
  # GET /timeslots.json
  def index
    @timeslots = Timeslot.all
  end

  # GET /timeslots/1
  # GET /timeslots/1.json
  def show
  end

  # POST /timeslots
  # POST /timeslots.json
  def create
    @timeslot = Timeslot.new(timeslot_params)

    if @timeslot.save
      render :show, status: :created, location: @timeslot
    else
      render json: @timeslot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timeslots/1
  # PATCH/PUT /timeslots/1.json
  def update
    if @timeslot.update(timeslot_params)
      render :show, status: :ok, location: @timeslot
    else
      render json: @timeslot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timeslots/1
  # DELETE /timeslots/1.json
  def destroy
    @timeslot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeslot
      @timeslot = Timeslot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timeslot_params
      params.fetch(:timeslot, {})
    end
end
