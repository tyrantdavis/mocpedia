class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Delete wikis owned by user when user is deleted.
  has_many :wikis, dependent: :destroy
  has_many :collaborators
  has_many :wikis, through: :collaborators, source: :wiki

  before_save { self.role ||= :standard }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  enum role: [:standard, :premium, :admin]

end
