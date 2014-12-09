class Schedule < ActiveRecord::Base
	belongs_to :doctor

	def ice_cube_schedule
		sch = self.schedule
		IceCube::Schedule.from_yaml(sch) #, :start_date_override => Time.now)
	end
end
