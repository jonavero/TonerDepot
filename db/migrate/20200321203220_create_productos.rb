class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :Serial
      t.string :Descripcion
      t.string :Marca
      t.string :Modelo
      t.string :Area

      t.timestamps
    end
  end
end
