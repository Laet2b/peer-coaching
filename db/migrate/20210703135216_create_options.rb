class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.date :date
      t.references :skill, null: false, foreign_key: true
      t.string :category
      t.string :status
      t.datetime :b_time
      t.datetime :e_time

      t.timestamps
    end
  end
end
