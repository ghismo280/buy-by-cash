class PagesController < ApplicationController
  def home

  end

  def show
    @ebuyer = User.find(params[:id])
  end
end
