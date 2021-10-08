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

location1=Location.create!(name: "Normandy",address_line_one: "7738 Springdale Dr",address_line_two: "Normandy",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 354544742,latitude: 38.713894216893614, longitude: -90.30208583616161)
location2=Location.create!(name: "OFallon",address_line_one: "2254 State Hwy K",address_line_two: "O'Fallon",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 5378568456,latitude: 38.67118615958442,longitude: -90.21846271745149)
location3=Location.create!(name: "Cool Vally",address_line_one: "1790 S Florissant Rd",address_line_two: "Cool Vally",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 52687565,latitude: 38.72439590747494 ,longitude: -90.30697151854389)
location4=Location.create!(name: "Club Hills",address_line_one: "17306 Kedzie Ave ",address_line_two: "Hazel Crest",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 7882251,latitude: 41.57448061735295,longitude: -87.69542802188134)
location5=Location.create!(name: "Edwardville",address_line_one: "2525 S State Rte 157 ",address_line_two: "Edwardsville",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 3648855,latitude: 38.78110712349212,longitude: -89.99641567999147)
location6=Location.create!(name: "Edmundson",address_line_one: "10482 Natural Bridge Rd",address_line_two: "Edmunson",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 87155696,latitude: 38.73712379963696,longitude: -90.36228141271617)
location7=Location.create!(name: "Kinloach",address_line_one: "7102 N Hanley Rd",address_line_two: ", Hazelwood",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 8745325,latitude: 38.769072424972215,longitude: -90.33469273996937)
location8=Location.create!(name: "Brentwood",address_line_one: "8600 Strassner Dr",address_line_two: "Brentwood",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 557857528,latitude: 38.621725600291,longitude: -90.36688427904915)
location9=Location.create!(name: "Hazelwood",address_line_one: "1186 Teson Rd",address_line_two: "Hazelwood",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 8796255,latitude: 38.792604024269586,longitude: -90.38527052976517)
location10=Location.create!(name: "St.Peters",address_line_one: "1725 Thoele Rd",address_line_two: "St.Peters",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 898741525,latitude: 38.76611838286981,longitude: -90.51087057784007)
location11=Location.create!(name: "Creve Cour",address_line_one: "1030 Woodcrest Terrace Dr",address_line_two: "Creve Cour",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 878945585,latitude: 38.675473733114316,longitude: -90.45294602510049)

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