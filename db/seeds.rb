# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

10.times do
	city = City.create!(city_name:Faker::Address.city)
end

10.times do |index|
	specialty = Specialty.create!(specialty_name: "specialty#{index}")
end

10.times do |index|
	doctor = Doctor.create!(first_name: Faker::Name.first_name,last_name:Faker::Name.last_name, postal_code:Faker::Address.zip_code, city_id: rand(1...10))
end

20.times do
	patient = Patient.create!(first_name: Faker::Name.first_name,last_name:Faker::Name.last_name, city_id: rand(1...10))
end

30.times do
	appoitment = Appoitment.create!(date: Faker::Date.backward(30), doctor_id: rand(1...10), patient_id: rand(1...20), city_id: rand(1...10))
end

