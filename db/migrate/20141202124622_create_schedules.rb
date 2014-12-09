class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    	t.integer :doctor_id
    	t.text :schedule
      t.timestamps
    end
  end
end
