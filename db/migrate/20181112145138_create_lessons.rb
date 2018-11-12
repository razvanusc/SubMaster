class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.datetime :start_time
      t.datetime :start_date
      t.string :status
      t.integer :duration
      t.integer :price
      t.string :address
      t.string :description
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
