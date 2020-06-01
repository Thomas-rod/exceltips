class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home, :newtips]

  def home

  end

  def newtips

  end

end

