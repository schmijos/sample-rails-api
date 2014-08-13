# Use this one as base for standard rails applications like the page_controller for angularjs
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
