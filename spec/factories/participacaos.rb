# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :participacao do
    usuario {create :usuario}
    turma {create :turma}
    tipo "aluno"
  end
end
