class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :interes
      t.string :link
      t.integer :parent

      t.timestamps
    end
  end
end
