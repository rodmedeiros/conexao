# Helpers para os testes, seja features, controles e assim por diante
module LoginMacros

  # loga como um usuario especifico
  def set_user_session(user)
    session[:user_id] = user.id
  end

  # spec de feature para logar na apliação pela view
  def sign_in(user)
    visit login_path
    click_link 'Log In'
    fill_in 'CPF', with: user.cpf
    fill_in 'Senha', with: user.password
    click_button 'Entrar'

  end
end
