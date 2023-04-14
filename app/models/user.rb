# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  phone           :string
#  profile_photo   :string
#  roles_count     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  building_id     :integer
#  issues_id       :integer
#  roles_id        :integer
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many  :comments, { :class_name => "Comment", :foreign_key => "user_id", :dependent => :nullify }

has_many  :roles, { :class_name => "Role", :foreign_key => "user_id", :dependent => :nullify }

has_many  :buildings, { :class_name => "Building", :foreign_key => "user_id", :dependent => :nullify }

belongs_to :issues, { :required => true, :class_name => "Issue", :foreign_key => "issues_id", :counter_cache => true }

belongs_to :habitat, { :required => true, :class_name => "Building", :foreign_key => "building_id", :counter_cache => true }

belongs_to :user_role, { :required => true, :class_name => "Role", :foreign_key => "roles_id", :counter_cache => true }

end
