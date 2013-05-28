class CreateTestbedOwners < ActiveRecord::Migration
  def change
    create_table :testbed_owners do |t|
      t.string :name
      t.string :coreid
      t.text :description

      t.timestamps
    end
  end
end
