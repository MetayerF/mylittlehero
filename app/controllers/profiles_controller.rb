class ProfilesController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]
  skip_after_action :verify_authorized

  def show
    if @user.date_of_birth.nil?
      flash[:notice] = "Oups.. Votre profil n'est pas éditer. Merci de l'éditer pour y accéder."
      redirect_to edit_profile_path
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:firstname, :lastname, :nickname, :date_of_birth, :place_of_birth, :gender, :car, :favorite_song, :favorite_movie, :job, :photo)
  end
end
