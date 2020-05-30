class SolicitudesController < ApplicationController
  def index
    @solicitudes= TransferenciaCab.all.includes(:empleado).where(Estatus: "Abierto")
      @solicitud = TransferenciaCab.find_by(@solicitud)
  end
  def update
    @solicitud =TransferenciaCab.find_by(@solicitud)
    if @solicitud.update(params_update)
      redirect_to '/listadesolicitudes', flash: {notice: 'Datos actualizados correctamente'}
    else
      render 'solicitudes/index', flash: {notice: 'Error en actualizar registro'}
    end
  end

def destroy
  @solicitud = TransferenciaCab.find(params[:id])
  if @solicitud.destroy
    redirect_to '/listadesolicitudes',flash: { notice3: 'Solicitud eliminada correctamente '}
  else
    redirect_to '/listadesolicitudes',flash: { notice4: 'La Solicitud no pudo ser eliminada'}
  end
end

  private
  def params_detalle
    params.require(:transferenica_det).permit(:TransferenciaCab_id,:Servicio,:producto_id,:Estatus,:Tiempo)
  end

  def params_update
    params.require(:transferencia_cab).permit(:Estatus)
  end
end
