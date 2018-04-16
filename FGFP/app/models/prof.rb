class Prof < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing.jpeg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :name , presence: true
  validates :lastname , presence: true
  validates :pronouns , presence: true
  validates :email, presence: true
  validates :office, presence: true
  validates :hometown, presence: true
  validates :interests, presence: true
  validates :funfact, presence: true
  validates :lifestory, presence: true
  validates :whymentor, presence: true
has_attached_file :attach

  belongs_to :department
  has_one :user
end
