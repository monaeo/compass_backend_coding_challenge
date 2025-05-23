class CreateTimeAllocations < ActiveRecord::Migration[7.1]
  def change
    create_table :time_allocations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.datetime :date
      t.string :activity

      t.timestamps
    end
  end
end
