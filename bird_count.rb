class BirdCount
    def self.last_week
      return @visits_per_weeek = [0, 2, 5, 3, 7, 8, 4]
    end
  
    def initialize(birds_per_day)
      @birds_per_day = birds_per_day
    end
  
    def yesterday
      return @birds_per_day[-2]
    end
  
    def total
      return @birds_per_day.sum
    end
  
    def busy_days
      return @birds_per_day.count {|birds| birds >= 5}
    end
  
    def day_without_birds?
      @birds_per_day.include?(0)
    end
  end
  