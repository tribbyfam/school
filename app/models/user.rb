class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :first_name, :last_name, :age, :education, :username
  validates :username, uniqueness: true, presence: true, format: { with: /\A[a-zA-Z]+([a-zA-Z]|\d)*\Z/}

  after_initialize :set_defaults

  private

  def set_defaults
    self.role ||= 'student'
  end

  def profile
  end
end
