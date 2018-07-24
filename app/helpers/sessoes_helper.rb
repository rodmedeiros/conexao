module SessoesHelper

  def login (usuario)
    session[:usuario_id] = usuario.id
  end

  def usuario_atual
    @usuario_atual ||= Usuario.find_by(id: session[:usuario_id])
  end

  def block_access
    if usuario_atual.present?
      redirect_to root_path
    end
  end

  def logado?
    !usuario_atual.nil?
  end

  def logout
    session.delete(:usuario_id)
    @usuario_atual = nil
  end


end