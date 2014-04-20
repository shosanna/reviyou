class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :text, :start_offset, :end_offset, :selected_text, :post_id
end
