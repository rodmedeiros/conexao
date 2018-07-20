# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :participacao do
    usuario
    turma
    situacao :inscrito
    tipo { [:aluno, :professor, :servidor].shuffle.take(1)[0] }

    factory :inscreve do
      tipo :aluno
    end

    factory :leciona do
      tipo :professor
    end
  end
end
