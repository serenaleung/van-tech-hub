class Organization < ApplicationRecord
has_many :users, dependent: :nullify
has_many :adapts, dependent: :destroy
has_many :adapted_technologies, through: :adapts, source: :technology

end
