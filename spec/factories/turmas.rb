# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :turma do
    sequence(:codigo_turma) { |n| "A#{n}" }
    sequence(:codigo_disciplina) { |n| "GMA000#{n}" }
    disciplina 'Cálculo II-A'
    ano 2018
    semestre { rand(1..2) }

    factory :turma_com_professor do

      after(:create) do |turma|
        # cria um professor novo
        create :leciona, turma: turma
      end
    end
  end
end
