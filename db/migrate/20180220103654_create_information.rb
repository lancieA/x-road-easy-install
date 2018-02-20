class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.string :domain_name
      t.string :ip_machine
      t.string :machine_name

      t.timestamps
    end
  end
end
