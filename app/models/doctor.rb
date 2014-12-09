class Doctor < ActiveRecord::Base
	has_one :schedule

	def add_schedule(start_time,end_time)
		schedule = Schedule.new
		schedule.doctor_id = self.id 
		sch = IceCube::Schedule.new(start_time, end_time: end_time)
		sch.add_recurrence_rule IceCube::Rule.weekly.day(1, 2, 3, 4, 5)
		schedule.schedule = sch.to_yaml
		schedule.save
	end
end
