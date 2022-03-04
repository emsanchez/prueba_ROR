class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email, null: false
      t.string :password
      t.references :tipousuario, null: false, foreign_key: true

      t.timestamps
    end
    add_index :usuarios, :email, unique: true
  end
end
