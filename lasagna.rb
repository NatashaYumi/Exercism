class Lasagna

    Lasagna:: EXPECTED_MINUTES_IN_OVEN = 40
    Lasagna:: PREPARATION_PER_LAYER = 2
      
      def remaining_minutes_in_oven(actual_minutes_in_oven)
        return EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
      end
    
      def preparation_time_in_minutes(number_of_layers)
        return PREPARATION_PER_LAYER * number_of_layers
      end
    
      def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
        return preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
      end
    
    end