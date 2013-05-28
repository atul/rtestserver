class CreateTestbeds < ActiveRecord::Migration
  def change
    create_table :testbeds do |t|
      t.string :name
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
