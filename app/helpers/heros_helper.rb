module HerosHelper

  def age_count_for(hero)
    ((Date.today - hero.date_of_birth)/30.5).to_i
  end
end
