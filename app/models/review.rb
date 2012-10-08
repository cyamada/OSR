class Review < ActiveRecord::Base
  attr_accessible :content, :teacher_id, :user_ip
end
