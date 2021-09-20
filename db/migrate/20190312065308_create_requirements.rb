class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :title
      t.text :Project_requirements
      t.datetime :published_at
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
