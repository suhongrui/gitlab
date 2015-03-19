require 'test_helper'
require 'html/pipeline/gitlab'

class HTML::Pipeline::GitlabEmojiFilterTest < Minitest::Test
  GitlabEmojiFilter = HTML::Pipeline::Gitlab::GitlabEmojiFilter

  def setup
    ActionController::Base.asset_host = 'https://foo.com'
  end

  def test_emojify
    filter = GitlabEmojiFilter.new('<p>:heart:</p>')
    doc = filter.call
    assert_match 'https://foo.com/images/emoji/heart.png', doc.search('img').attr('src').value
  end

  def test_unsupported_emoji
    block = '<p>:sheep:</p>'
    filter = GitlabEmojiFilter.new(block)
    doc = filter.call
    assert_match block, doc.to_html
  end

  def test_uri_encoding
    filter = GitlabEmojiFilter.new('<p>:+1:</p>')
    doc = filter.call
    assert_match 'https://foo.com/images/emoji/+1.png', doc.search('img').attr('src').value
  end
end
