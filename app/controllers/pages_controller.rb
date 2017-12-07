class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user = User.new
  end

  def styleguide
    @base_font   = 'Montserrat'
    @header_font = 'Grand Hotel'
  end
end
