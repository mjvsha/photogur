class Picture < ApplicationRecord
  def self.more_than_month
    Picture.where("created_at < ?", "2017-09-14")
  end



end
