class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :salaries, dependent: :destroy

  def self.search(search)
  if search
    self.where("name like ?", "%#{search}%")
  else
    self.all
  end
end
end
