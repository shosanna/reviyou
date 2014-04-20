module ApplicationHelper
  def content_with_comments(post)
    content = Reviyou::Content.new(post.content)
    content.replace(post.comments.order("start_offset asc")) do |comment, selection|
      content_tag(:span, selection, title: comment.text, data: { toggle: "tooltip" }, class: "with-comments")
    end
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
