class CreateTransferenciaCabs < ActiveRecord::Migration[6.0]
  def change
    create_table :transferencia_cabs do |t|
      t.integer :empleadosCodigo
      t.string :Servicio
      t.string :Estatus, default: 'Abierto'
      t.string :Tiempo

      t.timestamps
    end
  end
end
