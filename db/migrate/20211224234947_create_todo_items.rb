# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.string :body
      t.boolean :completed, default: false
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
      t.index :body
      t.index :completed
      t.index :created_at
      t.index :updated_at
    end
  end
end
