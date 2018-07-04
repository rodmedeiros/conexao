require 'rails_helper'

RSpec.describe Turma, type: :model do

  let(:turma) {Turma.new}

  describe 'validations' do

    subject { turma }
    it {is_expected.to validate_presence_of(:codigo_turma)}
    it {is_expected.to validate_presence_of(:codigo_disciplina)}
    it {is_expected.to validate_presence_of(:disciplina)}
    it {is_expected.to validate_presence_of(:ano)}
    it {is_expected.to validate_presence_of(:semestre)}
  end

end
