class AssemblyLine
    AssemblyLine:: CARS = 221
    def initialize(speed)
      @speed = speed
    end
  
    def production_rate_per_hour
      production_per_hour = (@speed * CARS).to_f
      if @speed >= 1 and @speed <= 4
        return production_per_hour 
      elsif @speed >=5 and @speed <=8
        return (production_per_hour * 0.90)
      elsif @speed == 9
        return production_per_hour * 0.80
      else
       return production_per_hour * 0.77
      end
    end
  
    def working_items_per_minute
      (production_rate_per_hour / 60).floor
    end
  end
  