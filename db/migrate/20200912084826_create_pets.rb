class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :age
      t.boolean :vaccinated, default: false
      t.boolean :registered, default: false
      t.integer :human_id
    end
  end
end
