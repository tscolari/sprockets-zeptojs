namespace :development do
  desc "Updates zeptojs scripts"
  task :update_zeptojs, :version do |t, args|
    require File.expand_path('../../sprockets_zeptojs/updater', __FILE__)
    SprocketsZeptojs::Updater.new(args[:version]).update
  end
end
