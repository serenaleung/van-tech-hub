class DirectoryController < ApplicationController
  before_action :authenticate_user!

  def index
    if Organization.count == 0
      find_companies
    end
    @organizations = Organization.all
    total = @organizations.count
    @orgs = []
    i = 1
    @organizations.each do |org|
      if org.latitude != nil
        @orgs.push([org.name, org.latitude, org.longitude, i])
        i += 1
      end
    end
  end

  private

    def find_companies
      response = HTTParty.get("https://api.crunchbase.com/v/3/odm-organizations?query=technology&locations=vancouver&organization_types=company&user_key=#{ENV['CRUNCHBASE_CLIENT_ID']}")
      companies = JSON.parse(response.body)
      company_count = companies['data']['items'].count

      # counter = 0

      companies['data']['items'].each_with_index do |company, index|
        org = Organization.new({
          name: company['properties']['name'],
          website: company['properties']['homepage_url'],
          twitter: company['properties']['twitter_url'],
          city: company['properties']['city_name'],
          province: company['properties']['region_name']
          })

        begin
          info = Clearbit::Company.find(domain: org.website, stream: true)
        rescue
          info = nil
        end

        if !info.nil?
          org.street = "#{info.geo.streetNumber} #{info.geo.streetName}"
          org.overview = info.description
          org.employee = info.metrics.employees
          org.latitude = info.geo.lat
          org.longitude = info.geo.lng
          org.logo = info.logo

          org.save
          # counter += 1
        end
        # break if counter == 10
      end
    end
end

# crunchbase (model):

# name (name)
# homepage_url (website)
# twitter_url (twitter)
# city_name(city)
# region_name (province)


# clearbit:
# streetNumber
# streetName
# postalCode
# lat
# lng

# company = Clearbit::Company.find(domain: 'http://www.gravit-e.ca', stream: true)
# company.get.lat
