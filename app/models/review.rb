class Review < ActiveRecord::Base
  attr_accessible :review_id, :professor_id, :content, :attendance,
  								:workload, :professor_name, :user_ip

  validates :content, presence: true
  validates :professor_name, presence: true
  validates :attendance, presence: true
  validates :workload, presence: true

end
