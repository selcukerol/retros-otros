class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true, length: {minimum:4, maximum: 12}
  has_many :items, dependent: :destroy
  has_many :goods_sold, class_name: 'Order', foreign_key: :seller_id
  has_many :purchases, class_name: 'Order', foreign_key: :buyer_id
end
