# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topico do
    usuario {create :usuario}
    turma {create :turma}
    titulo "fake news"
    descricao "não tenho tempo a perder. só quero saber do que pode dar certo."
  end
end
