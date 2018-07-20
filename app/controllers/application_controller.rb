class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # O projeto já vem com a gem do portal (portal-sso) incluída
  # A gem do portal te dá os seguintes métodos:

  # usuario_corrente (com usuario_corrente.iduff e usuario_corrente.ip)
  # usuario_logado? (true ou false, status do login no portal)

  helper_method :admin, :logado?, :logout, :usuario_logado

  def admin
    @admin ||= Usuario.find_by_id(session[:user_id])
  end

  def logado?
    admin != nil
  end

  def logout
    @admin = nil
    session[:user_id] = @admin
  end

  def usuario_logado
    Usuario.find 3
  end

end
