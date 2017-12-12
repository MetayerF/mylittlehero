module UsersHelper
  def age_count_for(user)
    ((Date.today - user.date_of_birth)/365).to_i
  end
end
