class EmpleadosController < ApplicationController

  def index
    @empleados = Empleado.all
  end

  def show
    @empleado =Empleado.find(params[:id])
  end

  def edit
    @empleado =Empleado.find(params[:id])
  end

  def update
    @empleado =Empleado.find(params[:id])
    if @empleado.update(params_empleado_edit)
      redirect_to '/empleados', flash: {notice: 'Datos actualizados correctamente'}
    else
      render 'edit'
    end

  end

  def new
    @empleado =Empleado.new
  end

  def create
    @empleado = Empleado.new(params_empleado)
    if @empleado.save
      redirect_to '/empleados', flash: {notice: 'Empleado creado exitosamente'}
    else
      render 'new'
    end
  end

  def destroy
    @empleado = Empleado.find(params[:id])
    if @empleado.destroy
      redirect_to '/empleados',flash: { notice: 'Empleado eliminado correctamente '}
    else
      redirect_to '/empleados',flash: { notice: 'Empleado no pudo ser eliminado'}
    end
  end


  private

  def params_empleado
    params.require(:empleado).permit(:CodigoEmpleado,:Nombre,:Apellido,:Departamento,:Puesto)
  end

  def params_empleado_edit
    params.require(:empleado).permit(:Nombre,:Apellido,:Departamento,:Puesto)
  end

end
