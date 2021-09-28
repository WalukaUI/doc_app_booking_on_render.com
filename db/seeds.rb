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


10.times do
    patient=Patient.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        contact_number: Faker::PhoneNumber.cell_phone,
        clinic_location: Faker::Address.community,
        role: "patient",
        username: Faker::Internet.username,
        password_digest: Faker::Address.country
    )
end

puts "✅ Done seeding!"