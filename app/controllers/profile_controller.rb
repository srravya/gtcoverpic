require 'rubygems'
require 'RMagick'
class ProfileController < ApplicationController
  def show
  	src=Magick::ImageList.new("app/assets/images/random.jpg")
  	dest=Magick::ImageList.new(current_user.avatar)
  	dest.composite(src,CenterGravity,AtopCompositeOp)
  	dest.display
  end
end
