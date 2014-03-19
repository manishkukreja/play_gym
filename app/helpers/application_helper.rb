module ApplicationHelper
	def flash_class(level)
		case level
		when :notice then "alert_warning"
		when :success then "alert_success"
		when :error then "alert_error"
 		when :alert then "alert_info"
		end
	end
end
