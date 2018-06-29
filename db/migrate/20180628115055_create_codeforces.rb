class CreateCodeforces < ActiveRecord::Migration[5.2]
  def change
    create_table :codeforces, id: false do |t|
      t.integer :id, null: false
      t.string :name
      t.string :duration
      t.string :start_time

      # t.timestamps
    end

    add_index :codeforces, :id, unique: true
  end
end
