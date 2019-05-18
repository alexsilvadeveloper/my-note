# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.locale = 'pt-BR'

Discipline.create([
	{ name: 'Português' },
	{ name: 'Matemática' },
	{ name: 'História' },
	{ name: 'Sociologia' },
	{ name: 'Filosofia' },
	{ name: 'Literatura' }
])

1.upto(10) do
	Student.create(
		name: Faker::Name.name,
		address: Faker::Address.full_address,
		birthday: Faker::Date.birthday(18, 65)
	)
end

disciplines = Discipline.all

Student.all.each do |student|
	disciplines.each do |discipline|
		student.evaluations.create(
			discipline: discipline,
			note1: Faker::Number.between(1, 10),
			note2: Faker::Number.between(1, 10),
			note3: Faker::Number.between(1, 10),
			note4: Faker::Number.between(1, 10)
		)
	end
end
