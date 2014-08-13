class Api::V2::SamplesController < Api::V1::SamplesController
  def new_feature
    render json: "lulz feature"
  end
end