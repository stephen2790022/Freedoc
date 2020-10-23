# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all

10.times do 
    city = City.create(name: Faker::Nation.capital_city)
    patient = Patient.create(first_name: Faker::Superhero.prefix , last_name: Faker::Superhero.name, city: city )
    doctor = Doctor.create(first_name: Faker::Superhero.prefix , last_name: Faker::Games::StreetFighter.character, zip_code:Faker::Address.zip_code, city: city)
    appointment = Appointment.create(doctor: doctor, patient: patient, date: Faker::Date.between(from: '2020-09-23', to: '2020-09-26'),city: city)
    specialty = Specialty.create(name: Faker::Job.title)
    joinspedoc = Joinspedoc.create(doctor: doctor, specialty: specialty)
end