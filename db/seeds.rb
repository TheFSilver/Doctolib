# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Creation de deux villes
2.times do
  city = City.create(name:Faker::GameOfThrones.city)
  
  # Creation de 10 specialites
  5.times do
    specialty = Specialty.create(name:Faker::Job.field)
  end

  # Creation de 10 docteurs
  5.times do
    doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.zip, city_id: city.id, specialty_id: Specialty.all.sample.id)

    # Creation de 20 patients
    2.times do
      patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: city.id)

      # Creation de rendez-vous aléatoires sur une semaine
      rand(1..3).times do
        appointment = Appointment.create(date: Faker::Date.forward(7), doctor_id: rand(Doctor.first.id..Doctor.last.id), patient_id: rand(Patient.first.id..Patient.last.id), city_id: city.id)
      end
    end
  end
end
