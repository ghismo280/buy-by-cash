class PagesController < ApplicationController
  def home
     @ebuyers = User.where(ebuyer: true)

   #---------------- don't delete please ----------------
   #  string = "{"
   #  (0...@ebuyers.length - 1).each do |i|
   #    string << "\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[#{@ebuyers[i].longitude},#{@ebuyers[i].latitude}]},"
   #  end
   #  string << "\"type\":\"Feature\",\"geometry\":{\"type\":\"Point\",\"coordinates\":[#{@ebuyers[@ebuyers.length - 1].longitude},#{@ebuyers[@ebuyers.length - 1].latitude}]}"
   #  string << "}"
   #  @markers = "{\"type\":\"FeatureCollection\",\"features\":[#{string}]}"
   # @markers_json = @markers
   #-----------------------------------------------------

    @array = ""
    @ebuyers.each do |ebuyer|
      @array << "#{ebuyer.name}, #{ebuyer.latitude}, #{ebuyer.longitude};"
    end

  end

  def show
    @conversation = Conversation.new
    @ebuyer = User.find(params[:id])

  end

  private

  def users
    @users = User.all
  end
end

