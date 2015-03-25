module FYAML
  # Creates all folders
  class Folders
    class << self
      FASTLANE_FOLDER = 'fastlane'
      DELIVER_FOLDER = "#{FASTLANE_FOLDER}/deliver"
      APP_ICON_FOLDER = "#{DELIVER_FOLDER}/app-icon"
      RATING_FOLDER = "#{DELIVER_FOLDER}/rating"
      SCREENSHOTS_FOLDER = "#{DELIVER_FOLDER}/screenshots/en-US"

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
