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
    end
  end
end

# Boucle creant des rendez-vous aleatoirement
City.all.each do |onecity|
  rand(20..30).times do
    randomdoctor = Doctor.all.sample
    randompatient = Patient.all.sample

    # Boucle pour trouver un docteur provenant de la bonne ville
    while randomdoctor.city_id != onecity.id
      randomdoctor = Doctor.all.sample
    end

    # Boucle pour trouver un patient provenant de la bonne ville
    while randompatient.city_id != onecity.id
      randompatient = Patient.all.sample
    end

    # Creation de rendez-vous aléatoires sur une semaine
    rand(0..2).times do
      appointment = Appointment.create(date: Faker::Date.forward(7), doctor_id: randomdoctor.id, patient_id: randompatient.id, city_id: onecity.id)
    end
  end
end