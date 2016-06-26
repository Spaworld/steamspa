class ApplicationController < ActionController::Base
  include Clearance::Controller
  # :nocov:
  protect_from_forgery with: :exception
  # :nocov:
end
