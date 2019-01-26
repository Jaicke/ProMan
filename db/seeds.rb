# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Gerando usuário padrão"
user = User.create(
    email: "user@user.com",
    password: "123456",
    password_confirmation: "123456"
)
puts "CONCLUÍDO"


project = Project.create(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph([1,2,3].sample),
    user: user
)

Task.create(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph([1,2,3].sample),
    project: project,
    status: [0,1,2].sample
)
