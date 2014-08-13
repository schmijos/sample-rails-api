class Api::V1::SamplesController < Api::ApplicationController
  before_action :set_sample, only: [:show, :update, :destroy]

  # GET /api/v1/samples
  # GET /api/v1/samples.json
  def index
    @api_v1_samples = Sample.all
    render json: @api_v1_samples
  end

  # GET /api/v1/samples/1
  # GET /api/v1/samples/1.json
  def show
    render json: @api_v1_sample
  end

  # POST /api/v1/samples
  # POST /api/v1/samples.json
  def create
    @api_v1_sample = Sample.new(sample_params)
    if @api_v1_sample.save
      render json: @api_v1_sample, status: :created, location: api_v1_sample_path(@api_v1_sample)
    else
      render json: @api_v1_sample.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/samples/1
  # PATCH/PUT /api/v1/samples/1.json
  def update
    if @api_v1_sample.update(sample_params)
      head :no_content
    else
      render json: @api_v1_sample.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/samples/1
  # DELETE /api/v1/samples/1.json
  def destroy
    @api_v1_sample.destroy
    head :no_content
  end

  private
    def set_sample
      @api_v1_sample = Sample.find(params[:id])
    end

    def sample_params
      params.require(:sample).permit(:name, :value)
    end
end
