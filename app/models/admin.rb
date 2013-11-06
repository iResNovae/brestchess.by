# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#

class Admin < ActiveRecord::Base
  attr_accessible :email, :password, :password_digest
  has_secure_password
end
