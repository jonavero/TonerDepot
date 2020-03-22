class Producto < ApplicationRecord

  validates :Serial, :Descripcion,:Marca,:Modelo, presence: true


end
