module Reviyou
  class Content
    def initialize(text)
      @original_text = text.gsub("\r\n", "\n")
    end

    def replace(comments)
      text, cumulative = original_text.dup, 0

      comments.inject(0) do |offset, comment|

        start_offset = comment.start_offset + offset

        selection = text[start_offset, comment.length]

        if block_given?
          comment_text = yield(comment, selection)
        else
          comment_text = "[#{comment.id}|#{selection}]"
        end

        text[start_offset, comment.length] = comment_text

        offset + comment_text.length - comment.length
      end

      text
    end

    attr_reader :original_text
  end
end
