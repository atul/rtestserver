class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.string :name
      t.string :title
      t.text :description
      t.text :procedure

      t.timestamps
    end
  end
end
