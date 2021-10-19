class TaskCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :task_categories do |t|
      t.integer :task_id
      t.integer :category_id
    end
  end
end
