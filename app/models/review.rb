class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :msg, length: { maximum: 300 }
end
