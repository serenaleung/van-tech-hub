
['Ruby', 'Python','Java','JavaScript','PHP','C', 'Perl', 'Swift', 'jQuery','C++','GO','Scala','Haskell', 'Bash', 'Lua', 'Clojure', 'R*','TCL', 'Ruby on Rails', 'Django', 'Flask','CakePHP','Active Sever Pages','CodeIgniter', 'Apache Struts', 'Bootstrap', 'Symfony', 'CherryPy', 'Sinatra', 'Drupal','Express JS'].each do |language|

Technology.create(language: language)
puts "Technology created!"
end


20.times do
  technology = Technology.all.sample
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
                      twitter: Faker::Internet.url('twitter.com'),


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
              is_admin: false,
              org_approved: false
  )
  puts "User created!"
end

30.times do
  Adapt.create(
      organization_id: rand(1..20),
      technology_id: rand(1..10)
  )
  puts "Adapt created!"
end

organization_count = Organization.count
user_count = User.count
technology_count = Technology.count


puts Cowsay.say "Created #{organization_count}", :Dragon
puts Cowsay.say "Created #{user_count}", :Dragon
puts Cowsay.say "Created #{technology_count}", :Dragon
