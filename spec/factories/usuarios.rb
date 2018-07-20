# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    sequence(:iduff) { |n| "55555#{n}555" }
    sequence(:cpf) { |n| "00000#{n}00000" }
    password { Faker::Internet.password }
    nome { Faker::Name.name }
    tipo { [:aluno, :professor, :servidor].shuffle.take(1)[0] }

    factory :admin do
      admin true
    end

    factory :aluno_com_disciplinas do
      tipo :aluno

      ignore do
        turmas_tamanho 10
      end

      after(:create) do |usuario, evaluator|
        evaluator.turmas_tamanho.times do

        # cria as participacoes pertinentes
        create :inscreve, usuario: usuario, turma: create(:turma_com_professor)

        end
      end
    end

  end
end
