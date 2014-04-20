class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :text, :start_offset, :length, :selected_text, :post_id
end
