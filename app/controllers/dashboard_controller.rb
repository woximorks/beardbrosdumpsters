class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :check_approval

  def index

  end

  private

  def check_approval
    unless current_user.approved?
      redirect_to root_path, alert: "Your account is not approved yet."
    end
  end
end