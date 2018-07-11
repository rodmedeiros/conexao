require 'rails_helper'

RSpec.feature 'Logando' do
  given(:usuario_credenciado) { create :usuario }
  given(:usuario_nao_credenciado) { build :usuario, password: 'invalid' }

  scenario 'logando com as credenciais corretas' do
    sign_in usuario_credenciado
    expect(page).to have_content 'logado com sucesso'
  end

  scenario 'logando com as credenciais incorretas' do
    sign_in usuario_nao_credenciado
    expect(page).to \
      have_content 'CPF ou senha inválido. Por favor, tente novamente.'
  end

end
