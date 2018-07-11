require 'rails_helper'


RSpec.feature 'Gerenciamento de Usuários' do

  context 'acesso administrativo' do
    given(:admin) { create :admin }

    scenario 'Registra um novo aluno' do
      usuario_novo = build(:usuario)

      sign_in(admin)

      visit root_path

      expect {
        click_link 'Usuários'
        click_link 'Novo usuário'
        fill_in 'IDUFF', usuario_novo.iduff
        fill_in 'Nome Completo', usuario_novo.nome
        fill_in 'CPF', usuario_novo.cpf
        uncheck('admin ?')
        fill_in 'Password', usuario_novo.password
        fill_in 'Confirme Password', usuario_novo.password
        select 'estudante', from: 'Tipo'
      }.to change(User, :count).by(1)

      expect(current_page).to eq usuarios_path
      expect(page).to \
        have_content "usuário com iduff #{usuario_novo.iduff} criado"

    end
  end

  context 'acesso não administrativo' do
    given(:usuario) { create :usuario }

    scenario 'registrar novo usuário' do

      sign_in(usuario)

      visit new_usuario_path

      expect(current_page).to have_current_path(root_path)
      expect(page).to have_content 'não autorizado'

    end
  end
end
