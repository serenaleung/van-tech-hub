class Organization < ApplicationRecord

has_many :users, dependent: :nullify
has_many :adapts, dependent: :destroy
has_many :adapted_technologies, through: :adapts, source: :technology

validates :name, presence: true, uniqueness: { case_sensitive: false}
validates :employee, { presence: true, }
validates :city, { presence: true, }
validates :street, { presence: true, }
validates :province, { presence: true, }
validates :website, { presence: true, }
validates :adapted_technologies, { presence: true, }

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  private

    def full_street_address
      return "#{street}, #{city}, #{province}"
end

end
