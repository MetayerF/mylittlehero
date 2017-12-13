class RelativesController < ApplicationController
  before_action :get_hero, only: [:index, :new, :create]
  def index
    @relatives = policy_scope(@hero.relatives)
  end

  def show
    @relative = Relative.find(params[:id])
    authorize @relative
  end

  def new
    @relative = Relative.new(hero: @hero)
    authorize @relative
  end

  def create
    @relative = @hero.relatives.new(relative_params)
    @user = User.new(user_params)
    authorize @relative
    if @relative.save
      redirect_to hero_relatives_path
    else
      render :new
    end
  end


  private

  def get_hero
    @hero = Hero.find(params[:hero_id])
  end

  def relative_params
    params.require(:relative).permit(:family_link, :mother_side, :role, :invitation_status, :hero_id, :email)
  end

  def user_params
     params.require(:relative).permit(:email)
  end
end

