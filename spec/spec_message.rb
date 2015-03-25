require_relative 'spec_helper'

# Test class for Message
class SpecMessage < Minitest::Spec
  include FYAML::Message

  describe 'Message' do
    it 'should show okay message' do
      proc { show_okay_msg('my okay message') }.must_output("\e[0;32;49mmy okay message\e[0m\n")
    end

    it 'should show error message' do
      proc { show_error_msg('my error message') }.must_output("\e[0;31;49mmy error message\e[0m\n")
    end
  end
end
