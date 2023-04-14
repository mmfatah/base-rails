# == Schema Information
#
# Table name: buildings
#
#  id          :integer          not null, primary key
#  address     :string
#  name        :string
#  users_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Building < ApplicationRecord

  belongs_to :user_in_the_building, { :required => true, :class_name => "User", :foreign_key => "user_id" }

has_many  :users, { :class_name => "User", :foreign_key => "building_id", :dependent => :nullify }

end
