class CreateTrail < ActiveRecord::Migration[7.0]
  def change
    create_table :trails do |t|
      t.string :trail_name
      t.string :location
      t.boolean :completed
    end
  end
end
