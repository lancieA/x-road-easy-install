class AddBoxToInformation < ActiveRecord::Migration[5.1]
  def change
    add_column :information, :box, :string
    add_column :information, :ram, :integer
    add_column :information, :installation_type, :string
  end
end
