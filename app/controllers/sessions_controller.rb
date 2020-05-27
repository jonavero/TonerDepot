class SessionsController < ApplicationController
  def new

  end

  def create
    user =User.find_by_Correo(params[:Correo])
    if user && user.authenticate(params[:password])
      session[:user_id] =user.id
      if user.Tipo =='admin'
        redirect_to '/empleados'
      else
        redirect_to login_path,flash: {alert: "No tiene permiso para realizar esta accion"}
      end
    else
      redirect_to login_path , flash: {alert: "Contrasena o usuario invalido"}
    end
  end

  def destroy
    session[:user_id] =nil
    redirect_to '/login'
  end

end
