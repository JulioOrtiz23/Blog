class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.text :descripcion
      t.date :fecha_ingreso
      t.integer :user_id

      t.timestamps
    end
  end
end
