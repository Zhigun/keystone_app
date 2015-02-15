class Product < ActiveRecord::Base
  belongs_to :category
  has_many :reviews

  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/

  validates :category_id, presence: true
  validates :img, presence: true
end
