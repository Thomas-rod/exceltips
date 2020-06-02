class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home, :newtips, :price]

  def home

  end

  def newtips

  end

  def price

  end

end

