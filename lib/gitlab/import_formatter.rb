#coding:utf-8
module Gitlab
  class ImportFormatter
    def comment_to_md(author, date, body)
      "\n\n*作者 #{author} 于 #{date}*\n\n#{body}"
    end

    def comments_header
      "\n\n\n**导入评论:**\n"
    end

    def author_line(author, body)
      "*创建者: #{author}*\n\n#{body}"
    end
  end
end
