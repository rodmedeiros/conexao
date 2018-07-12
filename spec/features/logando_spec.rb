require 'rails_helper'

RSpec.feature 'Logando', focus: true do
  given(:usuario_credenciado) { create :admin }
  given(:usuario_nao_credenciado) { build :usuario }

  scenario 'logando com as credenciais corretas' do
    sign_in usuario_credenciado
    expect(current_path).to be root_path
    expect(page).to have_content "logado como administrador"
  end

  scenario 'logando com as credenciais incorretas' do
    sign_in usuario_nao_credenciado
    expect(current_path).to be login_path
    expect(page).to \
      have_content 'CPF ou senha inválido. Por favor, tente novamente.'
  end

end
