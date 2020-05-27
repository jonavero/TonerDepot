class TransferenciaCabsController < ApplicationController
  def new
    begin
      if params[:codigo].present?
        @empleado =Empleado.find_by_CodigoEmpleado(params[:codigo])
      else

      end
    rescue
      redirect_to transferencia_path, flash: {notice: "Registro no encontrado"}
    end
  end

  def mensaje

  end

  def seleccion
    @empleado =Empleado.find_by_CodigoEmpleado(params[:codigo])
    @cabeceraTrans = TransferenciaCab.new
  end

  def create
    @empleado =Empleado.find_by_CodigoEmpleado(params[:codigo])
    @cabeceraTrans = TransferenciaCab.new(params_cabecera)
    if @cabeceraTrans.save
      redirect_to '/Mensaje'
    else
      render 'seleccion'
    end
  end

  private
  def params_cabecera
    params.require(:transferencia_cab).permit(:empleados_id,:Servicio, :Tiempo)
  end
end
