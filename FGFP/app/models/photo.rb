class Photo < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing.jpeg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_attached_file :attach
end
