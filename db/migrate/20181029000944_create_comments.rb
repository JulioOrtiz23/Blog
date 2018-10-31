class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :descripcion
      t.date :fecha_ingreso
      t.integer :publication_id
      t.integer :user_id

      t.timestamps
    end
  end
end
