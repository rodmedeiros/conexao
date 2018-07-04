require 'rails_helper'

RSpec.describe Postagem, type: :model do
  let(:postagem) {Postagem.new}

  describe 'validations' do
    subject { postagem }
    it {is_expected.to validate_presence_of(:descricao)}
    it {is_expected.to validate_length_of(:descricao).is_at_most(1000)}
  end

end
