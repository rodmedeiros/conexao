# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mensagem do
    usuario {create :usuario}

  end
end
