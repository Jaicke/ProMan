namespace :dev do
  desc "Gera dados fakes"
  task seeds: :environment do
    
    puts "Gerando usuários"
      10.times do
        User.create(
          email: Faker::Internet.email,
          password: "123456",
          password_confirmation: "123456"
        )
      end
    puts "CONCLUÍDO"
    
    ######################################
   
    puts "Gerando projetos"
      10.times do
        Project.create(
          name: Faker::Name.name,
          description: Faker::Lorem.paragraph([1,2,3].sample),
          user: User.all.sample
        )
      end
    puts "CONCLUÍDO"

    puts "Gerando Tarefas"
    20.times do
      Task.create(
        name: Faker::Name.name,
        description: Faker::Lorem.paragraph([1,2,3].sample),
        project: Project.all.sample,
        status: [0,1,2].sample
      )
    end
  puts "CONCLUÍDO"
  
  end

end
