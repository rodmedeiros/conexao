# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :postagem do
    topico {create :topico}
    descricao "Au revoir"
  end
end
