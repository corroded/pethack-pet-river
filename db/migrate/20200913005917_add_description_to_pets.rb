class AddDescriptionToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :description, :text
  end
end
