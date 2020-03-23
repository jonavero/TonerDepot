class Empleado < ApplicationRecord
  validates :CodigoEmpleado, presence: {message: 'No puede dejarse Vacio'}
  validates :Nombre, presence: {message: 'No puede dejarse Vacio'}
  validates :Apellido, presence: {message: 'No puede dejarse Vacio'}
  validates :Departamento, presence: {message: 'No puede dejarse Vacio'}
  validates :Puesto, presence: {message: 'No puede dejarse Vacio'}

  validates :CodigoEmpleado, numericality: {message: 'Este campo debe ser numerico'}
end
