require_relative 'spec_helper'

FOLDER_LIST = %w(
  fastlane
  fastlane/deliver
  fastlane/deliver/app-icon
  fastlane/deliver/rating
  fastlane/deliver/screenshots/en-US
).freeze

# Test class for Folders
class SpecFolders < Minitest::Spec
  before do
    @clean_root = -> { `rm -rf fastlane` }
    @clean_root.call
  end

  after do
    @clean_root.call
  end

  describe 'Folders' do
    it 'should return root folder' do
      FYAML::Folders.root.must_equal('fastlane')
    end

    it 'should return array of folders' do
      folders = FYAML::Folders.send(:folders)
      folders.must_be_instance_of(Array)
      folders.must_equal(FOLDER_LIST)
    end

    it 'should raise when root folder already exist' do
      FYAML::Folders.setup
      proc { FYAML::Folders.setup }.must_raise(RuntimeError)
    end

    it 'should create all folders' do
      FYAML::Folders.setup

      FOLDER_LIST.each do |folder|
        File.exist?(folder).must_equal(true)
      end
    end
  end
end
