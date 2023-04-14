# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  upvotes    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  issues_id  :integer
#  user_id    :integer
#
class Comment < ApplicationRecord
  belongs_to :comment_owner, { :required => true, :class_name => "User", :foreign_key => "user_id" }

belongs_to :issues, { :required => true, :class_name => "Issue", :foreign_key => "issues_id", :counter_cache => true }

end
