class ProductosController < ApplicationController

  def index
    @productos = Producto.all
  end
  def show
    @producto =Producto.find(params[:id])
  end

  def edit
    @producto =Producto.find(params[:id])
  end

  def update
    @producto =Producto.find(params[:id])
    if @producto.update(params_producto_edit)
      redirect_to '/productos', flash: {notice: 'Datos actualizados correctamente'}
    else
      render 'edit'
    end

  end

  def new
    @producto =Producto.new
  end

  def create
    @producto = Producto.new(params_producto)
    if @producto.save
      redirect_to '/productos', flash: {notice2: 'Producto creado exitosamente'}
    else
      render 'new'
    end
  end

  def destroy
    @producto = Producto.find(params[:id])
    if @producto.destroy
      redirect_to '/productos',flash: { notice3: 'Producto eliminado correctamente '}
    else
      redirect_to '/productos',flash: { notice4: 'Producto no pudo ser eliminado'}
    end
  end


  private

  def params_producto
    params.require(:producto).permit(:Serial,:Descripcion,:Marca,:Modelo,:Area)
  end

  def params_producto_edit
    params.require(:producto).permit(:Descripcion,:Marca,:Modelo,:Area)
  end
end

