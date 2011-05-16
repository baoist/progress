class ProgressController < ApplicationController
  def index
    img = ImageHandle.new('public/images/capture/', 'jpeg')
    @foo = img.multi_offset(2,4)
    
    @bar = img.listall

    @baz = image_compare(img.most_recent, img.recent_offset(10))
  end

  def short
  end

  def graph
  end

  def day
  end

  def recent
    respond_to do |format|
      format.json  { render :json => {:foo => "bar", :wibble => "wobble"} }
    end
  end

  def image_compare(image_base, image_compare)
    base_img = Magick::Image.read("#{image_base}").first
    current_img = Magick::Image.read("#{image_compare}").first

    rgb_diff = Array.new
    current_img.difference(base_img).each do |color|
      rgb_diff << color
    end

    rgb_diff
  end
end
