class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
    	t.string :name, null: false
    	t.integer :level
      t.timestamps null: false
    end
  end
end
