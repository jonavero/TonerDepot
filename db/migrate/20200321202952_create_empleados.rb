class CreateEmpleados < ActiveRecord::Migration[6.0]
  def change
    create_table :empleados do |t|
      t.integer :CodigoEmpleado
      t.string :Nombre
      t.string :Apellido
      t.string :Departamento
      t.string :Puesto

      t.timestamps
    end
  end
end
