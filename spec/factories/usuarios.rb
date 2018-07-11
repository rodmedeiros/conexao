# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    iduff "875849283"
    tipo "aluno"
    cpf '17722511600'
    password { Faker::Internet.password }
    nome { Faker::Name.name }

    factory :admin do
      admin true
    end
  end
end
