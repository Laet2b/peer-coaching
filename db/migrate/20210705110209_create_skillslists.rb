class CreateSkillslists < ActiveRecord::Migration[6.1]
  def change
    create_table :skillslists do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
