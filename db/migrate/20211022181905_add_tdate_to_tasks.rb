class AddTdateToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :tdate, :date
  end
end
