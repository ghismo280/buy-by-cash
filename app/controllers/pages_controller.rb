class PagesController < ApplicationController
  def home
    @ebuyers = User.where(ebuyer: true)
  end

  def show
    @ebuyer = User.find(params[:id])
  end

  private

  def users
    @users = User.all
  end
end
