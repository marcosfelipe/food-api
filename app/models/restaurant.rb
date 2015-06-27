class Restaurant < ActiveRecord::Base
  has_attached_file :avatar, :default_url => "/images/:style/missing.png"
  validates_attachment :avatar,
                       :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] },
                       :size => { :in => 0..3.megabytes }
  belongs_to :stadium

  def avatar_url
    avatar.url
  end
end
