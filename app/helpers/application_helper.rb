module ApplicationHelper
  def content_with_comments(post)

    content = post.content

    post.comments.order("start_offset DESC").each do |comment|
      text = content[comment.start_offset, comment.end_offset]

      text = content_tag(:span, text, title: comment.text, data: { toggle: "tooltip" },
                         class: "with-comments")

      content[comment.start_offset, comment.end_offset] = text
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
