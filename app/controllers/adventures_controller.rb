class AdventuresController < ApplicationController
  before_action :set_hero
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = policy_scope(@hero.adventures).order(date: :desc)
    @adventures_presenter = AdventuresPresenter.new(@adventures)
    @comment = Comment.new
  end

  def show
  end

  def new
    @adventure = @hero.adventures.new
    authorize @adventure
    @adventure.photos.build
  end

  def create
    @adventure = @hero.adventures.new(adventure_params)
    @adventure.user = current_user
    authorize @adventure

    if @adventure.save
      redirect_to hero_adventures_path
    else
      render :new
    end
  end

  def edit
  end


  def update
    @adventure.update(adventure_params)
    if @adventure.save
      redirect_to hero_adventures_path
    else
      render :new
    end
  end

  def destroy
    @adventure.destroy
    redirect_to hero_adventures_path
  end

  private

  def set_hero
    @hero = Hero.eager_load(adventures: :photos).find(params[:hero_id])
  end

  def set_adventure
    @adventure = @hero.adventures.find(params[:id])
    authorize @adventure
  end

  def adventure_params
    params.require(:adventure).permit(:title, :description, :location, :date, photos_attributes: [:picture, :picture_cache])
  end
end
