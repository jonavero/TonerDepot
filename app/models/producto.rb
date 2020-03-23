class Producto < ApplicationRecord

  validates :Serial, presence: {message: 'No puede dejarse Vacio'}
  validates :Descripcion, presence: {message: 'No puede dejarse Vacio'}
  validates :Marca, presence: {message: 'No puede dejarse Vacio'}
  validates :Modelo, presence: {message: 'No puede dejarse Vacio'}


end
