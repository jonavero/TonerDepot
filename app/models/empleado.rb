class Empleado < ApplicationRecord
  validates :CodigoEmpleado, :Nombre, :Apellido, :Departamento,:Puesto, presence: true
  validates :CodigoEmpleado, numericality: true
end
