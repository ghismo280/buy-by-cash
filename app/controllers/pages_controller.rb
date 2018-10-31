class PagesController < ApplicationController
  def home

  end

  def show
    @ebuyer = User.find(params[:id])
  end

  private

  def users
    @users = User.all

  end
end
