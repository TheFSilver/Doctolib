# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Job.field, postal_code: Faker::Address.zip)
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  rand(1..3).times do
    appointment = Appointment.create(date: Faker::Date.forward(3), doctor_id: rand(Doctor.first.id..Doctor.last.id), patient_id: rand(Patient.first.id..Patient.last.id))
  end
end
