module FYAML
  # Prints coloured messages
  module Message
    def show_okay_msg(message)
      puts message.colorize(:green)
    end

    def show_error_msg(message)
      puts message.colorize(:red)
    end
  end
end
