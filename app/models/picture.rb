class Picture < ApplicationRecord
  belongs_to :user
  #:artist, :title, :url
  validates :artist, :url, presence: { message: "unfortunately, this cant be blank "}
  #title must be min 3 char, max 20 char
  validates :title, length: {in: 3..20}
  #url must be unique from other urls
  validates :url, uniqueness: true

  #this is the model and its looking at the database and it is looking for artist, title, url in the database
  #it is not looking at the form per se, but at the database columns for artist, title, url


  def self.more_than_month
    Picture.where("created_at < ?", "2017-09-14")
  end

  def self.picture_created_in_year
     Picture.where("created_at >= ?", "#{year}-01-01 01:01:01").where("created_at <= ?", "#{year}-12-31 23:59:59")

  end





end
