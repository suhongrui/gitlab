#coding:utf-8
require 'fileutils'
require 'open3'

module Gitlab
  module Popen
    extend self

    def popen(cmd, path=nil)
      unless cmd.is_a?(Array)
        raise "系统命令必须作为一个字符串数组"
      end

      path ||= Dir.pwd
      vars = { "PWD" => path }
      options = { chdir: path }

      unless File.directory?(path)
        FileUtils.mkdir_p(path)
      end

      @cmd_output = ""
      @cmd_status = 0
      Open3.popen3(vars, *cmd, options) do |stdin, stdout, stderr, wait_thr|
        # We are not using stdin so we should close it, in case the command we
        # are running waits for input.
        stdin.close
        @cmd_output << stdout.read
        @cmd_output << stderr.read
        @cmd_status = wait_thr.value.exitstatus
      end

      return @cmd_output, @cmd_status
    end
  end
end
