require 'html/pipeline'
require 'html/pipeline/gitlab/version'

module HTML
  class Pipeline
    class Gitlab
      # GitLab related filters for html-pipeline. Implements new filters used
      # by GitLab.

      # Custom filter implementations
      autoload :GitlabEmojiFilter, 'html/pipeline/gitlab/gitlab_emoji_filter'

      def initialize(filters)
        @filters = filters.flatten.freeze
      end

      def pipeline
        HTML::Pipeline.new @filters
      end
    end
  end
end
