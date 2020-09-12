class AddUrlAndBountyToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :url, :string
    add_column :pets, :bounty, :integer
  end
end
