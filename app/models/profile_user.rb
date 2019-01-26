class ProfileUser < ActiveRecord::Base
  # PaperClip gem
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", miniature: "30x30" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  validates_presence_of :first_name, :second_name
  
  belongs_to :user
end
