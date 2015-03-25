module FYAML
  # Prints coloured messages
  module Message
    def show_okay_msg(aMessage)
      puts aMessage.colorize(:green)
    end

    def show_error_msg(aMessage)
      puts aMessage.colorize(:red)
    end
  end
end
