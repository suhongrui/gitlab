#coding:utf-8
require_relative "popen"
require_relative "version_info"

module Gitlab
  class Upgrader
    def execute
      puts "GitUse #{current_version.major} 升级工具"
      puts "你的版本是 #{current_version}"
      puts "GitUse最新可用版本 #{current_version.major} is #{latest_version}"

      if latest_version?
        puts "您使用的是最新的GitUse版本"
      else
        puts "新GitUse版本是可用的"
        answer = if ARGV.first == "-y"
                   "yes"
                 else
                   prompt("你想升级吗 (yes/no)? ", %w{yes no})
                 end

        if answer == "yes"
          upgrade
        else
          exit 0
        end
      end
    end

    def latest_version?
      current_version >= latest_version
    end

    def current_version
      @current_version ||= Gitlab::VersionInfo.parse(current_version_raw)
    end

    def latest_version
      @latest_version ||= Gitlab::VersionInfo.parse(latest_version_raw)
    end

    def current_version_raw
      File.read(File.join(gitlab_path, "VERSION")).strip
    end

    def latest_version_raw
      remote_tags, _ = Gitlab::Popen.popen(%W(git ls-remote --tags https://gitlab.com/gitlab-org/gitlab-ce.git))
      git_tags = remote_tags.split("\n").grep(/tags\/v#{current_version.major}/)
      git_tags = git_tags.select { |version| version =~ /v\d\.\d\.\d\Z/ }
      last_tag = git_tags.last.match(/v\d\.\d\.\d/).to_s
    end

    def update_commands
      {
        "藏匿更改的文件" => %W(git stash),
        "获得最新的代码" => %W(git fetch),
        "切换到新版本" => %W(git checkout v#{latest_version}),
        "安装 gems" => %W(bundle),
        "迁移 DB" => %W(bundle exec rake db:migrate),
        "重新编译资源" => %W(bundle exec rake assets:clean assets:precompile),
        "清除缓存" => %W(bundle exec rake cache:clear)
      }
    end

    def env
      { 'RAILS_ENV' => 'production' }
    end

    def upgrade
      update_commands.each do |title, cmd|
        puts title
        puts " -> #{cmd.join(' ')}"
        if system(env, *cmd)
          puts " -> OK"
        else
          puts " -> 失败"
          puts "未能升级。尝试重复任务或进行手动升级 "
          exit 1
        end
      end

      puts "完成了"
    end

    def gitlab_path
      File.expand_path(File.join(File.dirname(__FILE__), '../..'))
    end

    # Prompt the user to input something
    #
    # message - the message to display before input
    # choices - array of strings of acceptable answers or nil for any answer
    #
    # Returns the user's answer
    def prompt(message, choices = nil)
      begin
        print(message)
        answer = STDIN.gets.chomp
      end while !choices.include?(answer)
      answer
    end
  end
end
