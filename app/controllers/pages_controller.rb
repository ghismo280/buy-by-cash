class PagesController < ApplicationController
  def home
    @ebuyers = User.where(ebuyer: true)
  end
end
