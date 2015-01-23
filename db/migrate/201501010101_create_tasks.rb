
class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :text
      t.boolean :completed
      t.timestamps null: false
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps null: false
    end

    create_table :list do |t|
      t.belongs_to :tasks, index: true
      t.belongs_to :users, index: true
    end
  end
end
