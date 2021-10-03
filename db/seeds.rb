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

# doctor table data

spe=["Anesthesiology", "Family medicine", "Dermatology", "Pediatrics", "Preventive medicine" ]
edu=["MBBS,MD", "BSc,MD,Phd", "MDC,MBBS"]


doctor1=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor2=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor3=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor4=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor5=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor6=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor7=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor8=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor9=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")
doctor10=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456")

puts "doctor seeded"

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

  repeat     = 10
  @addressLineOne=1.upto(repeat).map { |count| Faker::Address.community }

  city = cities.sample
  lat_lng = random_lat_lng(city[:lat], city[:lng])

location1=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location2=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location3=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location4=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location5=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location6=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location7=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location8=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location9=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location10=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])
location11=Location.create!(name: city[:name],address_line_one: @addressLineOne.sample,address_line_two: city[:name],city: city[:name],zipcode: Faker::Address.zip_code,contact_number: Faker::Address.zip_code,latitude: lat_lng[0],longitude: lat_lng[1])

puts "location seeded"

# Patient table data

patient1=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient2=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient3=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient4=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient5=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient5=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient6=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient7=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient8=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient9=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)
patient10=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: @addressLineOne.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country)

puts "ptients seeded"

 # DoctorLocation Table data
 
 patient=[patient1,patient4,patient2,patient3,patient5,patient6,patient7,patient8,patient9,patient10]
 doctor=[doctor1,doctor2,doctor3,doctor4,doctor5,doctor6,doctor7,doctor8,doctor9,doctor10]
 location=[location1,location2,location3,location4,location5,location6,location7,location8,location9,location10,location11]


  15.times do DoctorLocation.create!(
   doctor: doctor.sample,
   location: location.sample
  ) 
  end
  puts "DoctorLocation seeded"

# Comments Table data

10.times do 
  Comment.create!(
    doctor: doctor.sample,
    patient: patient.sample,
    comment:Faker::Quote.jack_handey,
    points: rand(1..5)
    )
  end

  puts "comment seeded"

# Appointments Table data

10.times do 
   
  Appointment.create!(
   doctor: doctor.sample,
   patient: patient.sample,
   date: Faker::Date.backward(days: 14),
   time: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now, format: :short),
   status: "open"
  )
 end

puts "✅ Done seeding!"