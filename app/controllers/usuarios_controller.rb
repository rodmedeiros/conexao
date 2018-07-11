class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.all
  end

  def create
    @usuario = Usuario.new(user_params)
  end

  def destroy
    @usuario = Usuario.find(params[:id]).destroy
  end

  def edit
  end

  def update
    @usuario = Usuario.find(params[:id])
    @usuario.update(user_params)
    redirect_to index_path
  end

  def show
    @usuario = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:nome, :iduff, :tipo)
  end


end
