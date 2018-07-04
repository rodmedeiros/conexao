require 'rails_helper'

RSpec.describe Participacao, type: :model do
  let(:participacao) {Participacao.new}

  describe 'validations' do
    subject { participacao }
    it {is_expected.to validate_presence_of(:tipo)}
  end

end
