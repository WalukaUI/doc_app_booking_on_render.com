# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding data..."

Patient.destroy_all
Location.destroy_all
Doctor.destroy_all
DoctorLocation.destroy_all
Appointment.destroy_all
Comment.destroy_all


repeat     = 10
@addressLineOne=1.upto(repeat).map { |count| Faker::Address.community }

# Patient table data

10.times do
    patient=Patient.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        contact_number: Faker::PhoneNumber.cell_phone,
        clinic_location: @addressLineOne.sample,
        role: "patient",
        username: Faker::Internet.username,
        password_digest: Faker::Address.country
    )
end

# Location  table data

cities = [
  {
    name: "New York",
    lat: 40.7128,
    lng: -74.0060
  },
  {
    name: "Chicago",
    lat: 41.8781, 
    lng: -87.6298
  },
  {
    name: "Seattle",
    lat: 47.6062, 
    lng: -122.3321
  },
  {
    name: "Washington D.C.",
    lat: 38.9072,
    lng: -77.0369
  },
  {
    name: "Denver",
    lat: 39.7392, 
    lng: -104.9903
  },
  {
    name: "Houston",
    lat: 29.7604, 
    lng: -95.3698
  }
]

# generate a random latitude/longitude

def random_lat_lng(start_x, start_y)
    r = 1 / 111.32
    u = rand
    v = rand
  
    w = r * Math.sqrt(u)
    t = 2 * Math::PI * v
    x = w * Math.cos(t) 
    y = w * Math.sin(t)
  
    x = x / Math.cos(start_y)
  
    [x + start_x, y + start_y]
  end

10.times do
    city = cities.sample
    lat_lng = random_lat_lng(city[:lat], city[:lng])

 location=Location.create!(
    name: city[:name],
    address_line_one: @addressLineOne.sample,
    address_line_two: city[:name],
    city: city[:name],
    zipcode: Faker::Address.zip_code,
    contact_number: Faker::Address.zip_code,
    latitude: lat_lng[0],
    longitude: lat_lng[1]

)
end

20.times do 
    spe=["Anesthesiology", "Family medicine", "Dermatology", "Pediatrics", "Preventive medicine" ]
    edu=["MBBS,MD", "BSc,MD,Phd", "MDC,MBBS"]
 Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    education: edu.sample,
    speciality: spe.sample,
    role: "doctor"

 )
end


puts "✅ Done seeding!"