class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :summary
      t.string :status
      t.string :body

      t.timestamps
    end
  end
end
