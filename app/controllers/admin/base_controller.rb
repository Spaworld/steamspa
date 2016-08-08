class Admin::BaseController < ApplicationController

  before_action :authenticate_user!

  def index
    authorize! :manage, :all
  end

  private

  rescue_from CanCan::AccessDenied do |exceptiion|
    respond_to do |format|
    format.html { redirect_to root_path, alert: 'You are not authorized to view this page' }
    format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

end
