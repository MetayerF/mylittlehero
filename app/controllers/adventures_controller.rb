class AdventuresController < ApplicationController
  before_action :set_hero
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = policy_scope(@hero.adventures)
  end

  def new
    @adventure = @hero.adventures.new
    authorize @adventure # IDEM ds create
  end

  def create
    @adventure = @hero.adventures.new(adventure_params) # TODO en private
    authorize @adventure # IDEM ds create

    # TODO: save redirect...
  end

  def edit
    # TODO
  end

  def update
    # TODO
  end

  def destroy
    # TODO
  end

  private

  def set_hero
    @hero = Hero.find(params[:hero_id])
  end

  def set_adventure
    @adventure = @hero.adventures.find(params[:id])
    authorize @adventure
  end
end
