class Technology < ApplicationRecord
  belongs_to :organization, optional: true

has_many :adapts, dependent: :destroy
has_many :organizations, through: :adapts
end
