class CreateMocks < ActiveRecord::Migration
  def change
    create_table :mocks do |t|
      t.string :name
      t.string :description
      t.string :url
      t.references :project, index: true, foreign_key: true
      t.references :requirement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
