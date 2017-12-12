module UsersHelper
  def age(user)
    ((Date.today - user.date_of_birth)/365).to_i
  end
end
