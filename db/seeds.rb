20.times do
  Organization.create(name: Faker::Company.name,
                      employee: rand(1..100),
                      manager: Faker::Name.first_name,
                      is_publish: true,
                      city: Faker::Address.city,
                      street: Faker::Address.street_address,
                      province: Faker::Address.state,
                      postal_code: Faker::Address.zip_code,
                      overview: Faker::RickAndMorty.quote,
                      website: Faker::Internet.url,
                      twitter: Faker::Internet.url('twitter.com')
  )
  puts "Org created!"
end

20.times do
  organization = Organization.all.sample
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              email: Faker::Internet.email,
              password_digest: '1234567',
              organization_id: organization.id,
              is_admin: false
  )
  puts "User created!"
end
