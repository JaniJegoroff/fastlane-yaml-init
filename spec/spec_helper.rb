require 'coveralls'
Coveralls.wear!

require 'minitest/autorun'
require 'minitest/reporters'

require 'fastlane-yaml-init'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
