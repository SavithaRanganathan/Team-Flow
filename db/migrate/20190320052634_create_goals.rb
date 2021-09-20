class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :pageview
      t.integer :newuser
      t.string :bouncerate
      t.string :achieved_pageview
      t.string :achieved_newuser
      t.string :achieved_bouncerate
      t.references :project, index: true, foreign_key: true
      t.references :requirement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
