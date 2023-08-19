class Api::V1::RailsreactsController < ApplicationController
  before_action :set_railsreact, only: %i[ show update destroy ]

  # GET /railsreacts
  def index
    @railsreacts = Railsreact.all

    render json: @railsreacts
  end

  # GET /railsreacts/1
  def show
    render json: @railsreact
  end

  # POST /railsreacts
  def create
    @railsreact = Railsreact.new(railsreact_params)

    if @railsreact.save
      render json: @railsreact, status: :created, location: @railsreact
    else
      render json: @railsreact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /railsreacts/1
  def update
    if @railsreact.update(railsreact_params)
      render json: @railsreact
    else
      render json: @railsreact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /railsreacts/1
  def destroy
    @railsreact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railsreact
      @railsreact = Railsreact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def railsreact_params
      params.require(:railsreact).permit(:title, :body)
    end
end
