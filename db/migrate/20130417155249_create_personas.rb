class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :identificacion
      t.string :email
      t.date :fch_ncto
      t.string :telefono
      t.string :municipio

      t.timestamps
    end
  end
end
