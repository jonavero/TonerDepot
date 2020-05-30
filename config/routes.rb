Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  # Rutas para usuario
  get '/empleados' => 'empleados#index'
  get '/new/empleado' => 'empleados#new', as: :newEmpleado
  post '/new/empleado' => 'empleados#create'
  delete 'empleado/:id' => 'empleados#destroy', as: :delete
  get 'empleado/:id/edit' => 'empleados#edit', as: :editEmpleado
  patch 'empleado/:id/update' => 'empleados#update', as: :updateEmpleado

  #Rutas para producto
  get '/productos' => 'productos#index'
  get '/new/producto' => 'productos#new', as: :newProducto
  post '/new/producto' => 'productos#create'
  delete 'producto/:id' => 'productos#destroy', as: :deleteProducto
  get 'producto/:id/edit' => 'productos#edit', as: :editProducto
  patch 'producto/:id/update' => 'productos#update', as: :updateProducto

  #Ruta de Sessiones
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #Manejo de la Cabecera para Transaccion
  get '/transferencia' => 'transferencia_cabs#new'
  get '/transferencianext' =>'transferencia_cabs#seleccion'
  post '/transferencianext' => 'transferencia_cabs#create', as: :newTransferenciaCab
  get '/Mensaje' => 'transferencia_cabs#mensaje'

  #Solicitudes
  get '/listadesolicitudes' => 'solicitudes#index'
  delete 'solicitud/:id' => 'solicitudes#destroy'
  patch '/transferenciaUpdate' => 'solicitudes#update', as: :updateTransferencia

  root 'sessions#new'
end
