class ApplicationController < ActionController::Base
  include Clearance::Controller
  # :nocov:
  protect_from_forgery with: :exception
  # :nocov:
  before_filter :set_variables

  private

  # Header
  def set_variables
    @logo_image = Blurb.logo_image
    @promo_message_blurb = Blurb.promo_message_blurb
    @sales_phone_number  = '1-800-856-0172'
    @sales_email_address = 'info@steamspa.com'
  end
end
