class ProfilesController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]
  skip_after_action :verify_authorized

  def show
  end

  def edit
  end

  def update
  end

  private

  def set_user
    @user = current_user
  end
end
