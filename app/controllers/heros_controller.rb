class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  def index
    @heros = policy_scope(Hero)
  end

  def show
  end

  def new
    @hero = Hero.new(user: current_user)
    @hero.relatives.build
    authorize @hero
  end

  def create
    @hero = current_user.created_heros.new(hero_params)

    authorize @hero
    if @hero.save
      redirect_to @hero
    else
      render :new
    end
  end

  def edit
  end

  def update
    @hero.update(hero_params)

    if @hero.save
      redirect_to @hero
    else
      render :edit
    end
  end

  def destroy
    @hero.destroy
    redirect_to heros_path
  end

  private
  def hero_params
    params.require(:hero).permit(:firstname,
      :lastname,
      :date_of_birth,
      :user_id,
      :photo,
      :gender,
      :nickname,
      :place_of_birth,
      :astro_sign,
      :eyes_color,
      :hair_color,
      :size,
      :weight,
      :favorite_toy,
      :photo_cache,
      relatives_attributes: [:family_link, :mother_side, :user_id, :role]
    )
  end

  def set_hero
     @hero = Hero.find(params[:id])
     authorize @hero
  end

end
