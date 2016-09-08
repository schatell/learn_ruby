
class Timer
    attr_accessor :seconds
    
    def initialize
        @seconds = 0
    end
    
    def time_string
        seconds = @seconds % 60
        totalminutes = @seconds / 60
        minutes = totalminutes % 60
        hours = totalminutes / 60
        
        @time_string = "%02d:%02d:%02d" % [hours, minutes, seconds]
   
    end

end