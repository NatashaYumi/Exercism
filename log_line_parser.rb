class LogLineParser
    def initialize(line)
      @line = line
    end
  
    def message
      @line.gsub((/\[\w*\]:/),'').strip
    end
  
    def log_level
      (@line.slice((@line.index('[')+1),(@line.index(']')-1))).downcase
    end
  
    def reformat
      "#{message} (#{log_level})"
    end
  end
  