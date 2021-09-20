class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :due_date
      t.references :requirement, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :status
      t.text :worklog

      t.timestamps null: false
    end
  end
end
