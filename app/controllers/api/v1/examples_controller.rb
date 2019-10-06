class Api::V1::ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :update, :destroy]

  # GET /examples
  # GET /examples.json
  def index
    @examples = Example.all
    render json: @examples
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
  end

  # POST /examples
  # POST /examples.json
  def create
    @example = Example.new(example_params)

    if @example.save
      render json: @example, status: :created, location: api_v1_example_url(@example)
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @example.update(example_params)
      render :show, status: :ok, location: @example
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @example.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example
      @example = Example.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_params
      params.require(:example).permit(:title, :content, :slug)
    end
end
