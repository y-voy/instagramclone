class PicturesController < ApplicationController

  def index
  end

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(content: params[:picture][:content])
  end

end
