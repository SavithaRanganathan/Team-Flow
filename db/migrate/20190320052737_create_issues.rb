class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.datetime :created_on
      t.references :task, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :status
      t.text :worklog

      t.timestamps null: false
    end
  end
end
