require_relative 'spec_helper'

FILE_LIST = %w(Appfile Deliverfile Fastfile metadata.yml)

# Test class for Files
class SpecFiles < Minitest::Spec
  before do
    @clean_root = -> { `rm -rf fastlane` }
    @clean_root.call
  end

  after do
    @clean_root.call
  end

  describe 'Files' do
    it 'should return array of template files' do
      files = FYAML::Files.send(:files)
      files.must_be_instance_of(Array)
      files.must_equal(FILE_LIST)
    end

    it 'should raise when root folder does not exist' do
      proc { FYAML::Files.setup }.must_raise(RuntimeError)
    end

    it 'should copy template files to root folder' do
      FYAML::Folders.setup
      FYAML::Files.setup

      root = FYAML::Folders.root

      FILE_LIST.each do |file|
        File.exist?("#{root}/#{file}").must_equal(true)
      end
    end
  end
end
