class Image < ApplicationRecord
  belongs_to :category

  self.per_page = 10

  def self.top_images(amt)
    imageArray = Image.all.sort_by {|image| image.likes}
    imageArray = imageArray.reverse
    topImageArray = imageArray[0..(amt-1)]
    return topImageArray
  end

end
