require 'rails_helper'

RSpec.describe Participacao, type: :model do
  let(:participacao) {Participacao.new}
  subject(participacao)

  describe 'validations' do
    it {is_expected.to validate_presence_of(:tipo)}
  end

end
