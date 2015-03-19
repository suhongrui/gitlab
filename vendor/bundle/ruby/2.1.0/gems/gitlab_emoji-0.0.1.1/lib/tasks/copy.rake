desc "Copy GitLab emojis to public/images directory"
task :copy_emoji do
  require 'gitlab_emoji'
  require 'emoji'

  # Copy the emojis from the 'emoji' gem
  ENV['TARGET']='assets/images/'
  Rake::Task["emoji:install_assets"].execute

  # Now copy all emojis including additional emojis
  project_target = ENV['GITLAB_TARGET'] ||= File.join(Rails.root, 'app/assets/images/emoji')
  source = File.absolute_path(File.dirname(__FILE__) + '/../../assets/images')
  unless File.exists?(project_target)
    puts "- Creating #{project_target}..."
    FileUtils.mkdir_p(project_target)
  end

  puts "Copying emojis:"
  Dir.glob("#{source}/*").entries.each do |asset|
    FileUtils.cp_r(asset, project_target, verbose: true, preserve: false)
  end
end
