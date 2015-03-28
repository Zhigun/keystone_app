class Product < ActiveRecord::Base
  belongs_to :category
  has_many :reviews, dependent: :destroy

  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/

  default_scope -> { order('created_at DESC') }
  validates :category_id, presence: true
  validates :img, presence: true
  validate :title, allow_blank: false
end
