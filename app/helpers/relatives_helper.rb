module RelativesHelper
  def relative_avatar_class(relative)
    relative.mother_side ? "relatives-border-mother-side" : "relatives-border-father-side"
  end
end
