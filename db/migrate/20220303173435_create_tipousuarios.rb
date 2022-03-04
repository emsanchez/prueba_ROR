class CreateTipousuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :tipousuarios do |t|
      t.string :nombre_tipo_usuario

      t.timestamps
    end
  end
end
