class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.datetime :birth_date
      t.string :color
      t.string :name
      t.string :sex
      t.text :description

      t.timestamps
    end
      add_index :cats, :name 
  end
end
