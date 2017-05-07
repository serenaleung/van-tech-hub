
['Ruby', 'Python','Java','JavaScript','PHP','C', 'Perl', 'Swift', 'jQuery','C++','GO','Scala','Haskell', 'Bash', 'Lua', 'Clojure', 'R*','TCL', 'Ruby on Rails', 'Django', 'Flask','CakePHP','Active Sever Pages','CodeIgniter', 'Apache Struts', 'Bootstrap', 'Symfony', 'CherryPy', 'Sinatra', 'Drupal','Express JS'].each do |language|

Technology.create(language: language)
puts "Technology created!"
end

#angellist company csv output
companies = ['A Thinking Ape', 'Trulioo', 'AppNeta', 'Trippeo', 'Pinshape', 'Axiom Zen', 'Battlefy', 'Pathful', 'ShareDesk', 'Routific', 'Quietly', 'ZenHub', 'Procurify', 'LoginRadius', 'Strutta', 'Mojio', 'ePACT Network', 'Picatic', '7Geese', 'Perch', 'Wantering', 'Sunnytrail', 'Weddingful', 'Bex', 'Tapstream', 'Brightkit', 'Checkfront', 'Retsly', 'Later', 'BlueBat Games', 'LemonStand', 'Klue', 'SpaceList', 'cognitiveVR', 'Cognilab Technologies', 'Wiivv', 'Farm At Hand', 'Tingle', 'Keycafe', 'Shelfie', 'taski', 'HelpHub', 'Caliper.io', 'Change Heroes', 'Spark Software', 'Imaginary Games', 'Beanworks Solutions', 'Spacio', 'Walter', 'Adventure Bucket List', 'Synapse International', 'dooly', 'FundRazr', 'BluePerch', 'Peotic', 'Reelhouse', 'Lucidscape Technologies', 'Jiber', 'Kibooco', 'Fillet for Chefs', 'Timely', 'Sosido', 'WealthBar', 'CommandWear', 'Harp Platform', 'FusionPipe Software', 'Grow.', 'Vidigami Media', 'coparently', 'Tradable Bits', 'TBF Environmental Technology', 'Pogoride', 'Treeline Capital', 'Shnarped', 'tripcombi', 'Brain Rack Industries', 'Keela', 'Yactraq Online', 'PEER 1 Hosting', 'QxMD', 'Riipen', 'Optimail', 'PlaceSpeak', 'Ethelo', 'Input', 'Semantile', 'Denote', 'Arkit', 'GoFetch', 'Promo', 'Healthy Crowdfunder', 'semios', 'Far Gone Books', 'Thinkific', 'Swiiish', 'Tangoo', 'Fitplan Technologies', 'Indiloop', 'Experience Headphones', 'Rise', 'PANDOO', 'Backblend', 'Talentful', 'PayWith', 'Read Good', 'Alectric Studios', 'MLI', 'SpendSight Technologies', 'Lipsi Software Development', 'Fortuno Lending', 'Dudepins', 'Buy Sell Businesses', 'discovle', 'Currents', 'Rightovers Meal-Sharing', 'Simple Matters', 'meowbox', 'Invoice Simple', 'StoryTap', 'LocalSolo', 'FeedAptive', 'Mentionmapp Analytics', 'AppLabz', 'Orangedox', 'SeniorsZen', 'Resider', 'Jobcast', 'INSTANT Financial', 'Borentra Services', 'PLATOI Industries', 'Netcoins', 'Professional You', '4th Wall Interactive', 'Roomsy', 'Top Music Teachers', 'Soko', 'YAYME.COM', 'Kaptchr', 'Guusto', 'TailorCV', 'I Freaking Love Makeup', 'Goalbadger', 'Pendo', 'SixStream', 'Antsquare', 'Sidebuy Solutions', 'Brand(ark)', 'Foodavinci', 'Linespotters', 'The Abs-Tract Organization', 'Olioboard', 'Mintent', 'The Clean Swipe Razor', 'Monkey Box App', 'Genisys Project', 'piALGO', 'ModernAdvisor', 'MotionHall', 'ARAZAS', 'Flat World Applications', 'Innovative Time Solutions', 'PlaceUnit', 'Innkle', 'CodeCore Bootcamp', 'New/Mode', 'Protagonize', 'FI.SPAN', 'Motive.io', 'SwiftLauch', 'Moovly', 'Bidwars', 'Ferret', 'Showpass', 'Lolaguide', 'DRA Technologies', 'Meyler Capital', 'isoHunt', 'SHM Controls', 'Artcode Interactive', 'Lazymeal', 'Hypercycle', '285 Digital Media', 'Direct Feed', 'HackerBatch', 'LETT', 'Sirch', 'New District', 'ROBOOX', 'HyperDrive Medical', 'QDesign', 'MiCasa Online', 'HITCASE', 'Cranial', 'Aegis Mobility', 'CodeBunk', 'XPlus Medical Technologies', 'Pendulum NeuroTechnologies', 'GoPlanGo', 'Caskadia Technology Labs', 'Rockieweb Industries', 'Nightbound', 'NFC Bazaar', 'Synonymous Media', 'LM2x Entertainment', 'Ratchet Health', 'Circus Technologies', 'Insight Diasnostics Inc.', 'UmbraCity', 'One Degree', 'JumpSeat', 'Nodally', '2Vancouver.com', 'First Available', 'Marketing Stream', '9Shot Golf Innovations', 'Vancouver Photowalks', 'Site Delivery Network', 'Deadman Heartbeat', 'Boutique Diamonds', 'iEvaluate Real Estate', 'Geotoko', 'Sail', 'Unmanned Backcountry Systems', 'GlowLife Group', 'Propel', 'The Cookie Dining', 'Decor Addict', 'Hale', 'Clean My Mat', 'Pathways Health', 'Chirplocker', 'Cashsender', 'Top Clarity', 'Vending Dynamics', 'Keener Open Workflow', 'Salient Business Intelligence', 'Neuromash', 'Minnow Beats Whale', 'RocketChicken Interactive', 'Agave Games', 'Financial Vancouver Webzine', 'SnagSavings.com', 'Curiate', 'Event Temple', 'On Call', 'iaconicDesign', 'Ginch Club', 'Visual Dynamice Software', 'Moby', 'QR Artist', 'Vio', 'Flybase', 'Examtop', 'Scofen', 'coffeecrater', 'AI Coach', 'Ezead Media Group', 'Sproot', 'Happy Vending', '0idle Labs', 'Shake Chat', 'Fresh2Go Electronic Store', 'Rooftalk', 'Gobl', 'Weird Logics (Canada)', 'Scanlab Photogrammetry', 'Keep.', 'Brankmark Communications', 'The Cookie', 'Sixth Moment Computing', 'Matchmaker Videos', 'Sqwrl Collective', 'Criteri', 'Remotely']

companies.each do |company|
  response = HTTParty.get("https://api.crunchbase.com/v/3/odm-organizations?name=#{company}&locations=vancouver&user_key=#{ENV['CRUNCHBASE_CLIENT_ID']}")
  company_data = JSON.parse(response.body)
  # puts company_data
  puts 'pass 0'
  if company_data['data']['items'] != []
    org = Organization.new({
      name: company_data['data']['items'][0]['properties']['name'],
      website: company_data['data']['items'][0]['properties']['homepage_url'],
      overview: company_data['data']['items'][0]['properties']['short_description'],
      twitter: company_data['data']['items'][0]['properties']['twitter_url'],
      city: company_data['data']['items'][0]['properties']['city_name'],
      province: company_data['data']['items'][0]['properties']['region_name']
    })
    puts 'pass 1'
    response2 = HTTParty.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=#{ENV["GPSE_KEY"]}&sensor=false&location=49.2827,-123.1207&radius=47022&keyword=%22#{company}%22")
    company_data2 = JSON.parse(response2.body)
    puts 'pass 2'
    
    if company_data2['results'] != []
      org.street = company_data2['results'][0]['vicinity'] # this includes city, not a good way to get street address
      org.latitude = company_data2['results'][0]['geometry']['location']['lat']
      org.longitude = company_data2['results'][0]['geometry']['location']['lng']
      org.logo = company_data2['results'][0]['icon']
    
      # # for more details, if we need them
      # place_id = company_data2['results'][0]['place_id']
      # # API key needs to be removed from url and saved elsewhere
      # response3 = HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{place_id}&key=#{ENV["GPSE_KEY"]}")
      # company_data3 = JSON.parse(response3.body)
    
      org.employee = 100 # Random number to get around validations
    
      org.save
      puts org.errors.full_messages
    else
      puts 'no google places data... skipping'
    end
  else
    puts 'no crunchbase data... skipping'
  end
end

# 20.times do
#   technology = Technology.all.sample
#   Organization.create(name: Faker::Company.name,
#                       employee: rand(1..100),
#                       manager: Faker::Name.first_name,
#                       is_publish: true,
#                       city: Faker::Address.city,
#                       street: Faker::Address.street_address,
#                       province: Faker::Address.state,
#                       postal_code: Faker::Address.zip_code,
#                       overview: Faker::RickAndMorty.quote,
#                       website: Faker::Internet.url,
#                       twitter: Faker::Internet.url('twitter.com'),


#   )
#   puts "Org created!"
# end

# 20.times do
  # organization = Organization.all.sample
  User.create(first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              email: Faker::Internet.email,
              password: '1234567',
              # organization_id: organization.id,
              is_admin: false,

  )
  puts "User created!"
# end

organization_count = Organization.count
user_count = User.count
technology_count = Technology.count

30.times do
  Adapt.create(
      organization_id: rand(1..organization_count),
      technology_id: rand(1..technology_count)
  )
  puts "Adapt created!"
end


# puts Cowsay.say "Created #{organization_count}", :Dragon
# puts Cowsay.say "Created #{user_count}", :Dragon
# puts Cowsay.say "Created #{technology_count}", :Dragon
