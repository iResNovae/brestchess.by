# == Schema Information
#
# Table name: soonevents
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Soonevent < ActiveRecord::Base
default_scope order('id ASC')
  attr_accessible :content, :title
end
