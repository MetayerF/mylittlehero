class HerosController < ApplicationController

  def index
    @heros = policy_scope(Hero)
  end
end
