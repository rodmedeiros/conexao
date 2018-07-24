class UsuariosController < ApplicationController

  before_action :autorizado, except: [:new, :create]
  before_action :usuario_certo?, only: [:edit, :update, :destroy]

  def new
    @usuario = Usuario.new
  end

  def index
    @usuarios = Usuario.all
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @user.save
      flash[:success] = "Usuario criado com sucesso"
      redirect_back(fallback_location: root_path)
    else
      render 'usuarios/index'
    end
  end

  def destroy
    @usuario = Usuario.find(params[:id]).destroy
  end

  def edit
  end

  def update
    @usuario = Usuario.find(params[:id])
    @usuario.update(user_params)
    redirect_back(fallback_location: index)
  end

  def show
    @usuario = User.find(params[:id])
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nome, :iduff, :tipo, :cpf, :admin)
  end


end
