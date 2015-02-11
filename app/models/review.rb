class Review < ActiveRecord::Base
  belongs_to :user
  validates :msg, length: { maximum: 300 }
end
