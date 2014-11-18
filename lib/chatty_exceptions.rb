require "chatty_exceptions/version"

require 'mactts'

class Exception
  attr_reader :initial_message

  def initialize(message)
    @initial_message = message
    super
  end

  def to_s
    Mac::TTS.say(@initial_message, :victoria)
    @initial_message
  end
end
