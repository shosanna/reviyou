module ApplicationHelper
  def content_with_comments(post)
    Reviyou::Content.new(post.content).replace(post.comments.order("start_offset asc"))
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
