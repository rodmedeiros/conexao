require 'rails_helper'


RSpec.feature 'Gerenciamento de Usuários' do

  scenario 'Registra um novo aluno' do
    admin = create(:admin)
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
    expect(page).to have_content "usuário criado #{usuario_novo.iduff}"

  end

  scenario 'Remover usuario existente'
end
