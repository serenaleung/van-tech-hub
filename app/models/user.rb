class User < ApplicationRecord
  
  belongs_to :organization
  has_one :organization
end
