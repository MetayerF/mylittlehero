module RelativesHelper
  def relative_avatar_class(relative)
    relative.mother_side ? "relatives-border-mother-side" : "relatives-border-father-side"
  end

  def age_count_for(relative)
    ((Date.today - relative.user.date_of_birth)/365).to_i
  end
end
