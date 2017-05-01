class Organization < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :adapts, dependent: :destroy
  has_many :adapted_technologies, through: :adapts, source: :technology

  has_attached_file :avatar

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
