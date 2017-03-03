class Wiki < ActiveRecord::Base
  belongs_to :user

  has_many :collaborators
  has_many :users, through: :collaborators

  scope :visible_to, -> (user) { user && ((user.admin?) || (user.premium?)) ? all : where(private: false)}

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 20 }

end
