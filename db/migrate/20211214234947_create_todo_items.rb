class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.string :body
      t.boolean :completed, default: false

      t.timestamps
      t.index :body
      t.index :completed
      t.index :created_at
      t.index :updated_at
    end
  end
end
