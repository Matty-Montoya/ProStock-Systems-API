# frozen_string_literal: true

class PartsController < OpenReadController
  before_action :set_part, only: %i[show update destroy]

  # GET /parts
  def index
    @parts = Part.all
    render json: @parts
  end

  def my_index
    @parts = current_user.parts.all

    render json: @parts
  end

  # GET /parts/
  def show
    render json: @part
  end

  # POST /parts
  def create
    @part = current_user.parts.build(part_params)

    if @part.save
      render json: @part, status: :created, location: @part
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parts/1
  def update
    if @part.update(part_params)
      render json: @part
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parts/1
  def destroy
    @part.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_part
    @part = current_user.part.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def part_params
    params.require(:part).permit(:name, :description, :sku, :quantity)
  end
end
