# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  role_type   :string
#  users_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Role < ApplicationRecord
  belongs_to :user, { :class_name => "User", :foreign_key => "user_id", :counter_cache => true }

has_many  :users, { :class_name => "User", :foreign_key => "roles_id", :dependent => :nullify }

end
