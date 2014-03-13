module ProgramsHelper

	def paid_activity(val)
    if val.free.eql?(true)
      return 'Free'
    else
      return 'Paid'  
    end  
  end
end
