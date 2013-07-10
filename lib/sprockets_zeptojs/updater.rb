require 'open-uri'

module SprocketsZeptojs
  class Updater
    FILES = %w[ajax assets data detect event form fx fx_methods gesture polyfill selector stack touch zepto]
    ASSET_PATH = File.expand_path("../../../vendor/assets/javascripts/zepto/", __FILE__)

    def initialize(version, repo = "madrobby/zepto")
      @repo    = repo
      @version = version
    end

    def update
      FILES.each do |file|
        update_file(file)
      end
    end

    private

    def update_file(file_name)
      source = open(remote_file_name(file_name))
      File.open(local_file_name(file_name), 'w') do |target|
        puts "#{file_name} -> #{local_file_name(file_name)}"
        target.puts(source.read)
      end
    end

    def remote_file_name(file_name)
      "https://raw.github.com/#{@repo}/#{@version}/src/#{file_name}.js"
    end

    def local_file_name(file_name)
      File.join(ASSET_PATH, "#{file_name}.js")
    end

  end
end
