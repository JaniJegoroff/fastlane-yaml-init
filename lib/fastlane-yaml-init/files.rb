module FYAML
  # Copies all template files
  class Files
    class << self
      def setup
        copy_files
      end

      private

      def files
        %w(Appfile Deliverfile Fastfile metadata.yml)
      end

      def copy_files
        root = Folders.root
        fail("#{root} folder does not exist") unless File.exist?(root)

        files.each do |file|
          next if File.exist?(File.join(root, file))
          templates_path = Gem::Specification.find_by_name('fastlane-yaml-init').gem_dir + '/lib/templates'
          file_name = File.join(templates_path, file)
          FileUtils.copy(file_name, root)
        end
      end
    end
  end
end
