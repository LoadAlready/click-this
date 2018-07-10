class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :point_value
      t.string :username
      t.timestamps
    end
  end
end
