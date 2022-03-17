class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable #, :validatable
  has_one_attached :image
  validates :full_name, presence: true
  def image_resized
    image.variant(resize_to_limit: [75,100]).processed
  end
end
