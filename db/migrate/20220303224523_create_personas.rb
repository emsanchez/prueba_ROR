class CreatePersonas < ActiveRecord::Migration[7.0]
  def change
    create_table :personas do |t|
      t.string :nombre, null: false
      t.string :apellido_p, null: false
      t.string :apellido_m, null: false
      t.date :fecha_nacimiento, null: false
      t.string :sexo, null: false
      t.string :lugar_nacimiento, null: false
      t.string :estado_civil

      t.timestamps
    end
  end
end
