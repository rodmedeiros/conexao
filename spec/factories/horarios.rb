# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :horario do
    turma {create :turma}
    dia_semana "segunda-feira"
    hora_inicio "18:00"
    hora_fim "20:00"
  end
end
