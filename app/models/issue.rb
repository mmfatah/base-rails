# == Schema Information
#
# Table name: issues
#
#  id             :integer          not null, primary key
#  comments_count :integer
#  description    :text
#  status         :string
#  users_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#
class Issue < ApplicationRecord
  has_many  :comments, { :class_name => "Comment", :foreign_key => "issues_id", :dependent => :destroy }

has_many  :users, { :class_name => "User", :foreign_key => "issues_id" }

end
