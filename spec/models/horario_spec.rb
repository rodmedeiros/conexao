require 'rails_helper'

RSpec.describe Horario, type: :model do
  let(:horario) { build(:horario) }

  describe 'validations' do
    subject { horario }
    it {is_expected.to validate_presence_of(:dia_semana)}
    it {is_expected.to validate_presence_of(:hora_inicio)}
    it {is_expected.to validate_presence_of(:hora_fim)}
  end

end
