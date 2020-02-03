class User < ApplicationRecord
  has_secure_password
  validates :username,
            presence: true
  def to_s
    "#{first_name} #{last_name}"
  end
  has_many :Scores
  has_many :Papers, :through => :Scores
end
