class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :cedula
      t.string :nombre
      t.string :mail
      t.boolean :genero
      t.date :fch_nacimiento
      t.string :celular

      t.timestamps
    end
  end
end
