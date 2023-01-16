module Log4Bot
  class Main
    def initialize(timeformat)
      @timeformat = timeformat
    end
    def log(message)
      print "\e[38;2;0;211;0m[#{Time.now.strftime(@timeformat)}]:\e[0m #{message}\e[0m\n"
    end
    def error(message)
      print "\e[38;2;255;0;0m[#{Time.now.strftime(@timeformat)}]-Error:\e[0m #{message}\e[0m\n"
    end
    def warn(message)
      print "\e[38;2;200;0;0m[#{Time.now.strftime(@timeformat)}]-Warn:\e[0m #{message}\e[0m\n"
    end
    def info(message)
      print "\e[38;2;0;0;255m[#{Time.now.strftime(@timeformat)}]-Info:\e[0m #{message}\e[0m\n"
    end
    def debug(message)
      print "\e[38;2;255;255;0m[#{Time.now.strftime(@timeformat)}]-Debug:\e[0m #{message}\e[0m\n"
    end
  end
  class API
    def initialize(format)
      @timeformat = format
    end
    def get(message)
      print "\e[38;2;255;0;255m[#{Time.now.strftime(@timeformat)}]-GET:\e[0m #{message}\e[0m\n"

    end
  end
end
