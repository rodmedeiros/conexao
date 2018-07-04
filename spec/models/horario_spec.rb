require 'rails_helper'

RSpec.describe Horario, type: :model do
  let(:horario) {Horario.new}
  subject(horario)

  describe 'validations' do
    it {is_expected.to validate_presence_of(:dia_da_semana)}
    it {is_expected.to validate_presence_of(:hora_inicio)}
    it {is_expected.to validate_presence_of(:hora_fim)}
  end

end
