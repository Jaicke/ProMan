class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :date_limit
      t.references :project, index: true, foreign_key: true
      t.integer :status

      t.timestamps null: false
    end
  end
end
