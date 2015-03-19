require 'cgi'
require 'gitlab_emoji'
require 'html/pipeline/filter'
require 'action_controller'

module HTML
  class Pipeline
    class Gitlab
      # HTML filter that replaces :emoji: with images.
      class GitlabEmojiFilter < Filter
        def call
          search_text_nodes(doc).each do |node|
            content = node.to_html
            next if !content.include?(':')
            next if has_ancestor?(node, %w(pre code))
            html = emoji_image_filter(content)
            next if html == content
            node.replace(html)
          end
          doc
        end

        # Implementation of validate hook.
        # Errors should raise exceptions or use an existing validator.
        def validate
        end

        # Replace :emoji: with corresponding images.
        #
        # text - String text to replace :emoji: in.
        #
        # Returns a String with :emoji: replaced with images.
        def emoji_image_filter(text)
          return text unless text.include?(':')

          text.gsub(emoji_pattern) do |match|
            name = $1
            "<img class='emoji' title=':#{name}:' alt=':#{name}:' src='#{emoji_url(name)}' height='20' width='20' align='absmiddle' />"
          end
        end

        private

        def emoji_url(name)
          emoji_path = "emoji/#{emoji_filename(name)}"
          if context[:asset_host]
            # Asset host is specified.
            url_to_image(emoji_path)
          elsif context[:asset_root]
            # Gitlab url is specified
            File.join(context[:asset_root], url_to_image(emoji_path))
          else
            # All other cases
            url_to_image(emoji_path)
          end
        end

        def url_to_image(image)
          ActionController::Base.helpers.url_to_image(image)
        end

        # Build a regexp that matches all valid :emoji: names.
        def self.emoji_pattern
          @emoji_pattern ||= /:(#{emoji_names.map { |name| Regexp.escape(name) }.join('|')}):/
        end

        def emoji_pattern
          self.class.emoji_pattern
        end

        def self.emoji_names
          Emoji.names
        end

        def emoji_filename(name)
          # CGI.escape makes + into %20, skip that in this case
          if name == "+1"
            "+1.png"
          else
            "#{::CGI.escape(name)}.png"
          end
        end
      end
    end
  end
end
