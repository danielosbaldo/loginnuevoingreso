class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :nombrecompleto
      t.string :curp
      t.string :folio
      t.string :entidad
      t.string :nomclasifi
      t.string :plaza
      t.string :lengua
      t.string :gpodesemp
      t.string :correo
      t.string :localidad
      t.string :municipio

      t.timestamps
    end
    add_index :teachers, :curp
  end
end
