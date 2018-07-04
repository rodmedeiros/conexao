require 'rails_helper'

RSpec.describe Mensagem, type: :model do
  let(:mensagem) {Mensagem.new}

  describe 'validations' do
    subject {mensagem}
    it { is_expected.to validate_presence_of(:descricao)}
  end
end
