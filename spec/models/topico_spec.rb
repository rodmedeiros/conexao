require 'rails_helper'

RSpec.describe Topico, type: :model do

  let(:topico) {Topico.new}
  subject {topico}

  describe 'validations' do
    it {is_expected.to validate_presence_of(:titulo)}
    it {is_expected.to validate_presence_of(:descricao)}
    it {is_expected.to validate_length_of(:titulo).is_at_most(155)}
    it {is_expected.to validate_length_of(:descricao).is_at_most(2000)}
  end

end
