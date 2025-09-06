class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Add this line to associate posts with users
  has_many :posts, dependent: :destroy
end
