# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :turma do
    codigo_turma "001"
    codigo_discliplina "002"
    disciplina "BPM"
    ano 2018
    semestre 1
  end
end
