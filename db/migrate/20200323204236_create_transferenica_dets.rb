class CreateTransferenicaDets < ActiveRecord::Migration[6.0]
  def change
    create_table :transferenica_dets do |t|
      t.integer :TransferenciaCab_id
      t.string :Servicio
      t.integer :producto_id
      t.string :Estatus, default: 'Abierto'
      t.string :Tiempo

      t.timestamps
    end
  end
end
