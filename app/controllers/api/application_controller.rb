# The sampleapi api is separated from regular Rails middleware stack. We use a slick one.
class Api::ApplicationController < ActionController::API
  include ActionController::ImplicitRender
end
