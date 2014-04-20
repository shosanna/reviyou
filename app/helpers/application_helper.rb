module ApplicationHelper
  def content_with_comments(post)

    content = post.content

    return replace(content, post.comments)
#     cumulative = 0
#
#     post.comments.order("start_offset ASC").each do |comment|
#       start_offset = comment.start_offset + cumulative
#       end_offset   = comment.end_offset
#
#       text = content[start_offset, end_offset]
#
#       text = content_tag(:span, text, title: comment.text, data: { toggle: "tooltip" },
#                          class: "with-comments")
#
#       cumulative += text.length - comment.text.length
#
#       content[start_offset, end_offset] = text
#     end

    content
  end

  def replace(content, comments)
    cumulative = 0

    content = content.dup

    comments.each do |comment|
      start_offset = comment.start_offset + cumulative

      text = content[start_offset, comment.end_offset]

      comment_text = content_tag(:span, text, title: comment.text, data: { toggle: "tooltip" },
                         class: "with-comments")
      # comment_text = "[#{comment.id}|#{text}]"

      content[start_offset, comment.end_offset] = comment_text

      cumulative += comment_text.length - comment.end_offset
    end

    content
  end

  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    when :warning then "alert alert-warning"
    else
      "alert alert-info"
    end
  end

  def markdown(text)
    RDiscount.new(text).to_html
  end
end
