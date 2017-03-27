class Item < ApplicationRecord
  validates :user_id, presence: true
  validates :image, presence: true
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  belongs_to :order, optional: true
end
