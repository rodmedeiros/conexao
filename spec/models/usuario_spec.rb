require 'rails_helper'

RSpec.describe Usuario, type: :model do
  let(:usuario) {Usuario.new}

  describe 'validations' do
    subject { usuario }
    it { is_expected.to validate_presence_of(:iduff) }
    it { is_expected.to validate_presence_of(:tipo) }
    it { is_expected.to validate_presence_of(:nome) }
  end

end
