module FYAML
  # Creates all folders
  class Folders
    class << self
      FASTLANE_FOLDER = 'fastlane'.freeze
      DELIVER_FOLDER = "#{FASTLANE_FOLDER}/deliver".freeze
      APP_ICON_FOLDER = "#{DELIVER_FOLDER}/app-icon".freeze
      RATING_FOLDER = "#{DELIVER_FOLDER}/rating".freeze
      SCREENSHOTS_FOLDER = "#{DELIVER_FOLDER}/screenshots/en-US".freeze

      def setup
        create_folders
      end

      def root
        FASTLANE_FOLDER
      end

      private

      def folders
        [FASTLANE_FOLDER, DELIVER_FOLDER, APP_ICON_FOLDER, RATING_FOLDER, SCREENSHOTS_FOLDER]
      end

      def create_folders
        fail("#{root} folder already exist") if File.exist?(root)
        FileUtils.mkdir_p(folders)
      end
    end
  end
end
