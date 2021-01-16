class CreateChangeCats < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :birth_date, :datetime, :null=> false 
    change_column :cats, :color, :string, :null=> false 
    change_column :cats, :name, :string, :null=> false 
    change_column :cats, :sex, :string, :null=> false 
  end
end
