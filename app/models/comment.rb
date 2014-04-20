class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :text, :start_offset, :end_offset, :selected_text, :post_id

  def replace(content, comments)
    cumulative = 0

    content = content.dup

    comments.each do |comment|
      start_offset = comment.start_offset + cumulative

      text = content[start_offset, comment.end_offset]

      content[start_offset, comment.end_offset] = "[[[#{comment.id}|#{text}]]]"

      cumulative += 8
    end

    content
  end
end
